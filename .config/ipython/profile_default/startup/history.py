import atexit
import os

ipython = get_ipython()

HISTORY_PATH = os.path.join(ipython.profile_dir.location, "history.py")


def load_readline_favorites():
    """Load custom history into the readline history"""
    if not os.path.exists(HISTORY_PATH):
        return

    with open(HISTORY_PATH) as f:
        for line in f:
            ipython.readline.add_history(line.rstrip('\n'))

if ipython.has_readline:
    load_readline_favorites()


def save_history():
    """Save the IPython history"""
    print("Saving plaintext history to %s" % HISTORY_PATH)

    # Add any new lines from this session
    lines = [record[2] + '\n'
            for record in ipython.history_manager.get_range()]

    with open(HISTORY_PATH, 'a') as logfile:
        # Limit the number of entries
        logfile.writelines(lines[-ipython.history_length:])

# Save at exit
atexit.register(save_history)
