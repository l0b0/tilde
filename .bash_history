ack-grep --all --ignore-dir .jhw-cache --ignore-dir .sass-cache --ignore-dir log --ignore-dir public --ignore-dir tmp "pattern" . # search rails 
ack-grep "pattern" . # search 
add-apt-repository --help 
alias ls 
align_image_stack -vl -a aligned *.jpg # graphics 
alsamixer # audio input output volume 
aplay --list-pcms # list audio output speaker 
aplay recording.wav # audio output 
apport-bug package # report 
apport-bug --window & # report 
apport-collect 123456 # bug hardware software 
apropos . # all help man 
apropos bash # help man 
apropos --exact mv # help man 
apt-cache depends bash # package dependencies 
apt-cache policy nvidia-current # ppa source 
apt-cache rdepends bash # package reverse dependencies 
apt-cache search bash # package 
apt-cache show bash # package description 
apt-cache showpkg bash # package 
apt-cache showsrc bash # package source 
apt-cache stats bash # package statistics 
apt-get source apt 
apt-key --help 
apt-rdepends --dotty apt-rdepends | dot -Tsvg | display 
arandr & # screen layout graphics hardware 
arch # hardware 
arecord --duration 5 --format dat recording.wav # record audio file 
arecord --format dat | aplay # test audio input capture output playback default microphone speakers 
arecord --list-devices # list audio input capture microphones 
ash -o noexec ~/dev/makeThin/makeThin.ash # verify syntax 
aticonfig --initial=check # graphics amd x configuration 
autoconf # compile 
autoreconf --install # compile 
avahi-browse-domains --terminate # network domains scan 
avahi-browse --terminate --all # network services scan local remote 
avahi-browse --terminate --ignore-local _workstation._tcp # network tcp workstations scan remote 
avconv -i %04d.jpg -vcodec libx264 -bf 0 -crf 12 -an -r 25 -s hd1080 timelapse2.mp4 # video convert 
avconv -i input.mov -codec copy -ss 15 output.mov # video cut 
avconv -i input.mov -codec:video libx264 -codec:audio copy -filter transpose=clock output.mov # video rotate 
awesome --check # configuration verify parse 
basename -- "$PWD" # current directory name 
bash -c 'trap "echo baz" INT; kill -INT $$' > test.txt # signal 
bashdb test.sh # debug script 
bash --noprofile --norc -x # test trace 
bash -o noexec ~/.bash_history # verify syntax 
bash -o xtrace # debug 
bash test.sh # run script 
bash --version 
bc <<< '2+2' # calculator math 
bchunk image.bin image.cue image.iso 
bc --mathlib <<< 'e(1)' # calculator math e power 
bc <<< 'scale = 10; sqrt ( 2 )' # calculator math precision scale float decimal 
bg # background job 
bind -P | grep --fixed-strings ' can be found on ' | perl -pe 's/((?<!\\)(?:\\\\)*)\\C/\1Ctrl/g;s/((?<!\\)(?:\\\\)*)\\e/\1Esc,/g' # keyboard shortcuts 
bind -p | grep --invert-match --regexp '^$' --regexp '^#' --regexp 'self-insert$' | sed "s/\(.*\)/bind '\1'/" | tr --squeeze-repeats '\n' ';' # shortcuts code 
branch=name && git config --add svn-remote.$branch.url http://svn/repo/branches/$branch && git config --add svn-remote.$branch.fetch :refs/remotes/$branch && git svn fetch $branch && git checkout -b local-$branch --track $branch && git svn rebase $branch && unset branch # git svn branch create 
builtin # bash list 
bundle help # rails 
bundle init # rails 
bundle install # rails 
bundle package 
bundle update # rails 
bunzip2 file.bz2 # compression bzip 
cap deploy:check # rails 
cap deploy:login 
cap deploy:migrations # rails 
cap deploy # rails 
cap deploy:rollback # rails 
cap deploy:setup # rails 
capify . # rails 
cap # rails 
cat ~/contacts/*.vcf > ~/all.vcf # concatenate vcard 
cat /dev/zero > /tmp/ramdisk.XXXXXXXXXX/full.log # fill ramdisk partition file tmpfs 
cat /etc/papersize # print 
cat /etc/*release # os 
cat /proc/1/stat | awk '{ print $22 }' # process start time jiffies since boot 
cat /proc/cpuinfo # hardware 
cat /proc/devices # hardware 
cat /proc/filesystems # hardware 
cat /proc/misc # hardware 
cat /proc/stat # hardware 
cat /proc/sys/kernel/pid_max # process 
cat /proc/vmstat # hardware 
cat /sys/class/hwmon/hwmon0/device/fan1_output # hardware macmini4,1 speed 
cat /usr/share/gnome*/gnome-version.xml 
ccsm & # compiz settings 
cd -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
cd - # back 
cd -- "$(mktemp --directory)" # create temporary directory 
certutil # help 
checkbashisms ./*.sh 
chmod u+x test.sh 
clamtk & # antivirus 
cmp --print-bytes $(which arch) $(which uname) # binary diff 
coffee -v # coffeescript 
comm -23 <(grep --no-filename ^FN: ~/contacts.vcf | sort --unique) <(grep --no-filename ^FN: ~/contacts/*.vcf | sort --unique) # compare vcard names 
comm -23 --nocheck-order <(alias -p) <(bash -lc 'alias -p') # list session aliases 
completions git config '' | grep user # autocomplete 
./configure --help | pager # packaging 
./configure # packaging 
convert -density 150 -quality 100 input.pdf output.jpg # graphics extract image 
convert ./*.jpg output.pdf # graphics combine image 
convert ./name-*.gif name-%04d.png # format number graphics 
count . # filesystem 
cp --archive dir target # recursive owner permissions 
cp file{,.orig} # filesystem 
cppcheck foo.c # lint c code 
createdb --template template0 --username username dbname # postgresql 
cronlist 
cronlist --help 
cronlist --system 
cronlist --to '23:59:59' 
crontab -e # edit 
crontab -l # list 
csplit --prefix contact- --suffix-format %02d.vcf --elide-empty-files --quiet ~/contacts.vcf '/BEGIN:VCARD/' '{*}' # split vcard file 
csplit --prefix header- --suffix-format %02d.txt --elide-empty-files --quiet headers.txt '/----------------------------------------------------------/1' '{*}' # split file 
csvtool col 3 test.csv # csv column 
csvtool --help | pager 
cucumber --dry-run # rails 
cucumber # rails 
cucumber --version # rails 
curl --insecure --location http://xrl.us/perlbrewinstall | bash # development perl 
curl --version 
cut --delimiter ':' --fields 1 /etc/group | sort 
date --date="2001-09-09 03:46:40+02:00" +%s # convert timestamp 
date --date="6 months ago" # past time 
date --date="6 months" # future time 
date --date="Friday" # today future midnight 
date --date="Monday" # today future midnight 
date --date="now" # time 
date --date="Saturday" # today future midnight 
date --date="Sunday" # today future midnight 
date --date="Thursday" # today future midnight 
date --date="Tuesday" # today future midnight 
date --date="Wednesday" # today future midnight 
date --date="yesterday" # time 
date +%FT%T.%N # iso time 
date_range 2000-01-01 2000-12-31 
date_range 'last Monday' 
date --rfc-3339=ns --date="2001-02-03T04:05:06.7 + 1 year 2 months 3 days 4 hours 5 minutes 6.7 seconds" # dst time iso 
date --rfc-3339=seconds --date="@1000000000" # convert timestamp 
date +%Y-%m-%dT%H:%M:%S # iso time 
dd if=/dev/null of=/file/to/truncate seek=1 bs=1024 # truncate file bytes 
dd if=/dev/urandom bs=1kB count=1 | ent # calculate entropy 
dd if=/dev/zero of="${sandbox}/zeros.bin" bs=1000 count=5 # create file size 
declare -a # arrays 
declare -F # functions 
declare -f schroedinger # function definition 
declare -p # color variables functions 
declare # variables functions 
deluge & # bittorrent gui 
~/dev/awmtt/awmtt start --config ~/.config/awesome/rc.lua # debug awesome configuration 
~/dev/awmtt/awmtt stop # debug awesome configuration 
~/dev/meta2jpeg/meta2jpeg.sh *.CR2 # copy metadata graphics image 
~/dev/minecraft-scripts/backup.sh # game directory 
~/dev/minecraft-scripts/backup.sh ~/.techniclauncher # game directory 
~/dev/minecraft-scripts/install-lwjgl.sh 
~/dev/minecraft-scripts/install-Minecraft.sh # game 
~/dev/minecraft-scripts/install-Minecraft.sh -o 1.4.6 # game old version 
~/dev/minecraft-scripts/install-Minecraft-shortcut-GNOME.sh # game 
~/dev/schemaspy2svg/schemaspy2svg.sh ~/db # database graphics convert svg 
~/dev/tilde/scripts/make-links.sh --verbose --diff meld ~/settings/.* ~ # filesystem symlink 
~/dev/vcard/format-TEL.sh ~/contacts/*.vcf # format telephone number vcard 
~/dev/vcard/sort-lines.sh ~/dev/vcard/sorts/Gmail.re ~/contacts/*.vcf # sort vcard files 
~/dev/vcard/split.sh ~/contacts/*.vcf # split vcard files 
~/dev/xterm-color-count/xterm-color-count.sh -v # xterm color 
~/dev/xterm-color-count/xterm-color-count.sh # xterm color 
df --human-readable . # filesystem current directory 
df --human-readable # filesystem list all 
! df --portability | awk '{print $5}' | grep --fixed-strings --line-regexp --quiet '100%' # disk space available 
df --portability . | tail --lines 1 | cut --delimiter ' ' --fields 1 | grep --fixed-strings --invert-match --line-regexp --regexp '-' # directory partition 
diff <(~/bin/git diff --staged) <(~/bin/git diff --staged --minimal) 
difff --help 
diff <(git diff --staged --minimal) <(~/bin/git diff --staged --minimal) # test option 
diff --unified file{.orig,} # files 
diff --unified <(hexdump -C /bin/uname) <(hexdump -C /usr/bin/arch) 
diff --unified <(printf %s $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' | uniname -bcp) <(bash -c 'trap -- $'\''printf %s --\$\`!*@\		\\\\\\\'\''\\"𠂉\ $\'\''\\n\'\'''\'' INT; traps="$(trap)"; eval "$traps"; kill -INT $$' | uniname -bcp) # test 
diff --unified <(sudo sh -c env | sort) <(sudo -i sh -c env | sort) # environment variables root login shell 
diff <(wget --output-document - http://svn/repo/path?p=1) <(wget --output-document - http://svn/repo/path?p=2) 
dig example.org # dns lookup internet network 
dig example.org mx # dns email lookup internet network 
digikam & # photo manager 
dirname -- "$PWD" # parent directory 
disown # job 
dmesg | pager # debug os startup 
dos2unix test.txt # convert newline 
dot -O -Tsvg ./*.dot # graphics 
dot -Tsvg graph.dot # graphics 
dotty graph.dot # graphics 
dot -V 
dpkg --audit # fix packages 
dpkg --get-selections | grep --invert-match deinstall | cut --fields 1 # list all installed packages 
dpkg --listfiles package # list package files 
dpkg --search "$(which apt-get)" # package file owner search 
dpkg-shlibdeps $(which bash) # binary dependency packaging 
dpkg --status bash # package 
dropdb --username username dbname # postgresql 
du --si --summarize . # disk size 
echo 0 61 62 63 | xxd -revert # hex dump convert string character byte 
echo $BASHPID # shell subshell pid 
echo "body" > ~/.events/summary # notify 
echo "${COLUMNS}x${LINES}" # terminal size dimensions 
echo $? # exit code 
echo 'LC_PAPER="en_GB.UTF-8"' | sudo tee --append /etc/environment # print 
echo "$OSTYPE" 
echo "${paths[0]}" # array 
echo "${paths[@]: -1}" # array 
echo "${paths[@]}" # array 
echo "$PATH" | tr ':' $'\n' # user path 
echo "${PIPESTATUS[@]}" | tr --squeeze-repeats ' ' + | bc # array sum 
echo "$PROMPT_COMMAND" # shell 
echo "$REPLY" # read 
echo return _VERSION | awesome-client # lua version 
echo $$ # shell pid 
echo "$TERM" # shell 
echo 'test foo test bar test' | grep --only-matching test | wc --lines # count 
echo "$WINEPREFIX" 
editor ~/.bash_aliases_local # shell 
editor ~/.bash_aliases # shell 
 editor ~/.bash_history # shell 
editor ~/.bashrc_local # shell 
editor ~/.bashrc # shell 
editor ~/.config/awesome/rc.lua 
editor ~/dev/fgit/fgit.sh # dev 
editor ~/dev/indentect/indentect.sh # dev 
editor ~/dev/minecraft-scripts/install-Minecraft-dependencies-Ubuntu.sh # dev 
editor ~/dev/mkgithub/mkgithub.sh # dev 
editor ~/dev/tilde/.muttrc # email 
editor ~/dev/tilde/scripts/cleanup.sh 
editor ~/dev/tilde/scripts/install-all.sh 
editor ~/dev/tilde/scripts/make-links.sh 
editor ~/.gitconfig # dev 
editor .git/config # dev 
editor .gitignore # dev 
editor ~/.imapfilter/config.lua 
editor /lib/udev/rules.d/95-keymap.rules # keyboard 
editor Makefile # dev 
editor ~/.mkgithub # dev 
editor ~/.mozilla/firefox/*/chrome/userContent.css 
editor ~/.muttrc # email 
editor ~/.muttrc_local # email 
editor README.markdown # dev 
editor ~/.ssh/config 
editor ~/.subversion/config # dev 
editor ~/.subversion/servers # dev 
editor ~/.vimrc 
editor ~/.wine/system.reg 
editor ~/.wine/user.reg 
editor ~/.xinitrc 
eject # hardware cd dvd 
empty_line_before_eof --in-place ./* # newline 
enable -a # builtins 
enable -n # disabled builtins 
env - HOME="$HOME" LOGNAME="$USER" PATH="/usr/bin:/bin" SHELL="$(which sh)" command # emulate cron command 
env --ignore-environment bash -c 'printf "%s\n" "${?+?=$?}" "${#+#=$#}" "${*+*=$*}" "${@+@=$@}" "${-+-=$-}" "${!+!=$!}" "${_+_=$_}" "${$+$=$$}"; env' 
env # variable 
escaped_declare 
eval `resize -s 24 80` # terminal 
eval `ssh-agent` && ssh-add 
eval "$traps" # signal 
evince /usr/share/doc/gnu-standards/maintain.pdf.gz # help maintenance 
evince /usr/share/doc/gnu-standards/standards.pdf.gz # help 
evince /usr/share/doc/msort/msort.pdf.gz & # help 
evince /usr/share/doc/quilt/quilt.pdf.gz # help 
ex -c '1' -c '?^[[:space:]]*[^[:space:]#]?' -c $'a\n# New comment' -c 'wq' ~/.bashrc # insert after last match 
exclude_vcs < <(grep --fixed-strings --recursive --regexp 'foo' .) # search literal source 
exec $SHELL # replace 
exit 
exiv2 print IMG_1234.exv # metadata 
expand --tabs=4 test.txt # convert tab space 
facter # hardware os 
facter --help 
facter id # user 
fc # edit command history 
fc -l # list commands history 
fc -s # execute last command history 
feh --fullscreen --hide-pointer ./* # images viewer 
ffmpeg -i %04d.jpg -vcodec libx264 -bf 0 -crf 12 -vpre medium -an -r 25 -s hd1080 timelapse.mp4 # video convert 
ffmpeg -i %04d.jpg -vcodec libx264 -bf 0 -crf 12 -vpre medium -an -r 25 -s hd1080 -vf "transpose=2" timelapse.mp4 # video convert rotate 
fg # foreground job 
fgit gc -- ~/*/.git/.. ~/.*/.git/.. ~/dev/*/.git/.. /media/$USER/*/*/.git/.. 
fgit --help 
fgit pull -- ~/*/.git/.. ~/.*/.git/.. ~/dev/*/.git/.. /media/$USER/*/*/.git/.. 
fgit push -- ~/*/.git/.. ~/.*/.git/.. ~/dev/*/.git/.. 
fgit status -- ~/*/.git/.. ~/.*/.git/.. ~/dev/*/.git/.. /media/$USER/*/*/.git/.. 
file README.markdown 
find_date_sorted . -mindepth 1 # files 
find_date_sorted . -mindepth 1 | sort --reverse --zero-terminated | while IFS= read -r -d ''; do stat -- "$REPLY"; done # files loop reverse 
find . -empty 
find . -empty -delete # remove files 
find . -exec printf '%s\0' {} + | while read -r -d ''; do printf %q "$REPLY"; printf '\n'; done 
find . -group 1000 -exec chgrp $(id --group) {} + # update files permissions 
find -L . -type l # broken symlinks 
find . -mindepth 1 -exec printf '%s\0' {} + | shuf --head-count 10 --zero-terminated # random shuffle files 
find . -mindepth 1 -exec printf x \; | wc -c # count files posix safe 
find . -name '*.marks' -delete # remove jedit temp files 
find . \( -path ./.git -o -path ./.svn \) -prune -o \( -type f -exec grep --files-with-matches $'\t' {} + \) # exclude vcs directories tab files 
find /proc -regex '/proc/[0-9].*' -prune -o -print # not process number 
find . -regex '.*\.\(orig$\|\(BACKUP\|BASE\|LOCAL\|REMOTE\)\..*\)' -delete # remove git rebase temp files 
find . -type f -executable # files 
find . -type f -name file | exclude_vcs 
find . -type f -name '*.*' | sed -e 's/.*\.//' | sort | uniq --count | sort --general-numeric-sort # file extensions count 
find -version 
firefox -no-remote -P secondary & 
firefox -profilemanager & # config 
firefox -safe-mode & 
fold --width 1 <<< foo # split characters lines 
for path in ./*.jpg; do mv --verbose "$path" "$(printf "%04d" $index).jpg"; let index+=1; done; unset index 
for path in ~/.minecraft/saves/*; do overviewer.py --rendermodes=smooth-lighting,smooth-night,spawn "$path" "$path"/map; done 
for path in ./*.sass; do sass-convert "$path" "${path%.*}.scss"; done 
for path in ./*.zip; do unzip "$file"; done # all 
fortune 
for vcard in ./*.vcf; do msort --bp 'BEGIN:VCARD.*?END:VCARD\r\n\r\n' --sp '^N:(.*)$' < "$vcard" > "$vcard"2; mv "$vcard"2 "$vcard"; done 
free # memory 
fromdos -- file # convert newline 
fullname 
fullname root 
fuseiso -p file.bin "/media/${USER}/mountpoint" # mount 
fusermount -u "/media/${USER}/mountpoint" # unmount 
gcc --version 
gcc -Wall -o a.out foo.c # compile 
gconf-editor # gnome config 
gem help rdoc # ruby 
gem install bundler 
gem install pry pry-doc 
gem list --help 
gem list --local 
gem rdoc --all 
gem server 
gem uninstall foo # remove 
getconf ARG_MAX # arguments 
getconf -a # system configuration 
getent ahosts example.org # dns hosts internet ipv4 decimal 
getent hosts example.org # dns hosts internet ipv6 hex 
gethostip -d example.org # dns hosts internet ipv4 decimal 
git 
git add . 
git add .gitignore 
git add --interactive 
git add LICENSE 
git add Makefile 
git add --patch 
git add README.markdown 
git add tools.mk 
git bisect bad 
git bisect good 
git bisect reset 
git bisect run ./bisect.sh 
git bisect start HEAD HEAD~10 
git blame 1234abcd filename # revision 
git blame filename 
git branch 
git branch --all # list 
git branch --delete topic # local 
git branch --remotes 
git branch --set-upstream master origin/master # track 
git branch --track topic master 
git checkout -b topic remotes/origin/topic # branch change create 
git checkout -b topic-svn remotes/topic # branch change create subversion 
git checkout master # branch change 
git checkout . # revert 
git cherry-pick HEAD@{5} 
git cherry-pick master:HEAD 
git clean --dry-run -d # directories 
git clean --dry-run -dx # directories .gitignore 
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv # install ruby 
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build # install ruby 
git clone git://libdivecomputer.git.sourceforge.net/gitroot/libdivecomputer/libdivecomputer 
git clone git://repo.or.cz/cronlist.git 
git clone https://github.com/l0b0/cronlist.deb ~/dev/cronlist-0.1 && cd ~/dev/cronlist-0.1 && git remote add upstream git://github.com/l0b0/cronlist.git && git fetch upstream && git branch upstream && wget --output-document ~/dev/cronlist_0.1.orig.tar.gz https://github.com/l0b0/cronlist/tarball/v0.1 && git-import-orig --pristine-tar ~/dev/cronlist_0.1.orig.tar.gz 
git clone https://github.com/l0b0/mkgithub.git 
git clone https://github.com/terreActive/redmine.git 
git commit 
git commit --all --message "Example" 
git config diff.minimal 
git config diff.minimal false 
git config diff.minimal invalid 
git config diff.minimal true 
git config --global github.user l0b0 
git config --global mergetool.prompt false 
git config --list 
GIT_CURL_VERBOSE=1 git pull # debug 
git cvsimport -p x -v -d :pserver:anonymous@projectname.cvs.sourceforge.net:/cvsroot/projectname projectname 
git diff 
git diff --color-words 
git diff | diff-ignore-moved-lines 
git diff 'HEAD@{2013.04.30 08:00}' # date 
git diff HEAD^ -- README.markdown 
git diff --ignore-all-space 
git diff --ignore-all-space --no-color | git apply --cached 
git diff --ignore-space-change 
git diff master origin/master 
git diff origin/master..HEAD # remote 
git diff --raw 
git diff --staged 
[[ "$(git diff --staged | grep --count ^-)" -eq "$(git diff --staged | grep --count ^+)" ]] # verify sort 
git diff --staged --ignore-space-at-eol 
git diff --staged --stat 
git difftool old new # gui 
git diff --word-diff 
git fetch 
git fetch && git merge FETCH_HEAD # pull 
git format-patch --find-renames HEAD^ 
git gc # garbage collect 
git grep -I --name-only --null -e '' | xargs --null sed --in-place 's/[ \t]\+\(\r\?\)$/\1/;$a\' -- # whitespace eol eof 
git gui & 
git help add 
git help bisect 
git help blame 
git help branch 
git help checkout 
git help cherry-pick 
git help clean 
git help clone 
git help commit 
git help config 
git help cvsimport 
git help diff 
git help difftool 
git help fetch 
git help format-patch 
git help gc # garbage collection 
git help grep 
git help gui 
git help help 
git help ignore 
git help init 
git help instaweb 
git help log 
git help ls-tree 
git help merge 
git help mergetool 
git help mv 
git help pull 
git help push 
git help rebase 
git help reflog 
git help remote 
git help request-pull 
git help reset 
git help revert 
git help show 
git help stash 
git help status 
git help submodule 
git help svn 
git help tag 
git init 
git instaweb start 
git instaweb stop 
gitk --all . & # gui 
git log 
git log --after '2012-01-20 17:06' --before '2012-04-03 16:15' # date range 
git log Makefile 
git log --oneline --decorate 
git log origin/master..HEAD # remote 
git log --patch-with-stat 
git log --stat 
git ls-tree --long HEAD ./* | awk '{print $4 " " $5}' # file size commit 
git merge --abort # cancel revert 
git merge origin/master 
git mergetool & 
git merge topic # local branch 
git mv README{,.markdown} 
git pull 
git pull origin master 
git push 
git push --force 
git push origin :dead-branch # delete remote branch 
git push origin :refs/tags/name # delete remote 
git push --set-upstream origin master 
git push --tags 
git rebase --abort 
git rebase --continue 
git rebase --interactive HEAD~20 
git rebase master 
git reflog 
git reflog show --patch-with-stat 
git remote add -f origin ssh://user@example.org/home/user/repo 
git remote --verbose # list 
git reset --soft HEAD~1 # commit undo 
git reset v0.1 
git revert 123abc # commit undo 
git show commit:./path > path.old 
git stash drop stash@{0} # delete 
git stash && git merge origin/master && git stash pop 
git stash && git pull && git stash pop 
git stash && git rebase --interactive HEAD~20 
git stash list --date=local 
git stash list --patch # diff 
git stash --patch # diff create 
git stash pop 
git stash pop stash@{1} 
git stash save --keep-index "message" 
git stash save "message" 
git stash save --patch "message" # diff create 
git stash show 
git stash show --patch # diff 
git stash show --patch stash@{1} # diff 
gitstats ~/dev/tilde ~/gitstats && x-www-browser ~/gitstats/index.html # statistics history repo 
git status 
git submodule add --force git://github.com/l0b0/make-includes.git 
git submodule add --force git://github.com/l0b0/shell-includes.git 
git submodule update --init 
git svn clone --stdlayout --revision 1:HEAD http://svn/repo 
git svn clone --stdlayout --revision 1:HEAD --no-minimize-url http://svn/repo/path 
git svn dcommit 
git svn dcommit --dry-run 
git svn fetch 
git svn help 
git svn info 
git svn rebase 
git svn show-ignore >> .git/info/exclude 
git tag --delete name # local 
git tag v0.1 
git --version 
gksudo etherape & # network traffic visualization 
gksudo java -jar jdivelog-installer-*.jar & 
gksudo nm-connection-editor & # network configuration 
gksudo software-center & # install software 
gksudo software-properties-gtk & # source 
gksudo update-manager & 
glabels & # graphics 
glc-capture --out recording.glc minecraft 
glc-play recording.glc 
glc-play recording.glc -a 1 -o recording.wav # audio 
glc-play recording.glc -y 1 -o - | mencoder -demuxer y4m - -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=3000 -audiofile recording.wav -oac mp3lame -o recording.avi # video encoding mp4 mpeg4 
glxgears # 3d graphics benchmark 
glxinfo 
gnome-calculator & # math 
gnome-control-center sound & 
gnome-screensaver & 
gnome-screensaver-command --exit 
gnome-screensaver-command --lock 
gnome-screensaver-command --version 
gnome-screensaver --version 
gnome-shell --version 
gnome-specimen & 
gnome-tweak-tool & 
gpg --allow-secret-key-import --import ~/secring.gpg 
gpg --import ~/pubring.gpg 
gpg --keyserver keys.gnupg.net --recv-keys 55D0C732 # import pgp signature 
gpg --verify ./*.sig # pgp signature 
grep '\(\b\|^\)command\b.* .*help' ~/.bash_history # search 
grep --files-with-matches --null --regexp "pattern1" ./* | xargs -0 grep --files-with-matches --regexp "pattern2" # search and patterns 
grep --files-with-matches --null --regexp "pattern" ./* 2>/dev/null | tr --complement --delete '\000' | wc --chars # count occurrences pattern 
grep --fixed-strings --recursive --exclude-dir .git --exclude-dir .svn --exclude-dir CVS --regexp 'foo' . # search literal source 
grep --invert-match --file ~/dev/vcard/sorts/Gmail.re < ~/contacts.vcf | grep --invert-match --regexp '^ ' 
(grep --invert-match '^nameserver' /etc/resolv.conf; echo nameserver 208.67.222.222; echo nameserver 208.67.220.220) | sudo tee /etc/resolv.conf # dns configuration 
grep --quiet "^flags.*\blm\b" /proc/cpuinfo # 64 bit long mode 
grep --recursive --no-filename --only-matching 'foo' . | wc --lines # sum count search 
grep --regexp ^ --regexp "^$USER:" /etc/passwd # context highlight 
grep ":$USER\$" /etc/group 
grep "^$USER:" /etc/passwd # password 
grep --version 
groups 
groups nobody 
groups "$USER" 
guard 
guard --group functional:controller # test 
guard --group unit:decorator 
guard --group unit:model 
guard help 
guard list 
guard show 
gunzip example.gz 
gzip example.txt # compress 
help alias 
help bg 
help bind 
help builtin 
help command 
help continue 
help declare 
help disown 
help echo 
help enable 
help exit 
help fc 
help fg 
help help 
help history 
help jobs 
help kill 
help # list all 
help local 
help printf 
help [r]ead # read 
help [s]et # set 
help shift 
help shopt 
help . # source 
help test 
help [t]ime # time 
help trap # signal 
help [t]ype 
help typeset 
help ulimit 
help umask 
help unset 
help until 
help wait 
history | pager 
host example.org # dns lookup internet network ipv4 ipv6 
hostname # internet network 
hostname --ip-address # internet network address dns 
hostname --short # internet network 
hp-setup # printer 
hp-wificonfig # printer 
htop 
iconv --from-code=utf-8 --to-code=iso-8859-1 utf8.txt > latin1.txt # convert encoding 
id --group 
id # group user 
id --user 
id "$USER" 
if [[ -r /proc/sys/kernel/ns_last_pid ]]; then while true; do while read; do if [[ "$REPLY" != "$old" ]]; then printf '%(%s)T %d\n' -1 "$REPLY"; old="$REPLY"; fi; done < /proc/sys/kernel/ns_last_pid; read -t 1 || true; done; fi # processes pids log 
IFS=':' read -a paths <<< "$PATH" # tokenize array 
imapfilter 
indent ./*.c 
indentect --help 
indentect --verbose < "$(which indentect)" 
indentect < "$(which indentect)" 
infocmp -1 # list terminal 
info --raw-escapes --subnodes autoconf | pager --raw-control-chars # help 
info --raw-escapes --subnodes automake | pager --raw-control-chars # help 
info --raw-escapes --subnodes date | pager --raw-control-chars # help 
info --raw-escapes --subnodes dd | pager --raw-control-chars # help 
info --raw-escapes --subnodes find | pager --raw-control-chars # help 
info --raw-escapes --subnodes ls | pager --raw-control-chars # help 
info --raw-escapes --subnodes mktemp | pager --raw-control-chars # help examples temporary files 
info --raw-escapes --subnodes sed | pager --raw-control-chars # help 
insert_after_last '^[ \t]*[^# \t]' '# Comment 1' ~/.bashrc 
iostat 
ip addr show dev eth0 # ipv4 ipv6 device address 
ip addr show # ipv4 ipv6 network address 
ipcalc 0.0.0.0/0 # network 
ipcalc 192.168.0.1/24 # network 
ip link show down # network 
ip link show up # network 
ip -oneline -family inet addr show dev eth0 # ipv4 address 
ip route show dev eth0 # network 
ipython 
irb # interactive ruby shell 
iwconfig # wireless network configuration 
java -classpath ~/dev/hello-world/out/production/hello-world/ hello 
java -jar ~/schemaSpy.jar -dp /usr/share/java/mysql.jar -hq -t mysql -host localhost:3306 -db database -u user -p password -o ~/db && x-www-browser file://"$HOME"/db/index.html # db visualization 
java -jar ~/schemaSpy.jar -dp /usr/share/java/postgresql.jar -hq -t pgsql -host localhost:5432 -db database -s public -u user -p password -o ~/db && x-www-browser file://"$HOME"/db/index.html # db visualization 
java -jar /usr/local/bin/technic-launcher-latest.jar 
java -Xmx1024M -Xms512M -classpath ~/.minecraft/minecraft.jar net.minecraft.LauncherFrame 
jedit -reuseview # dev editor 
jhead -da2010:11:12/13:14:15-2005:01:01 ./*.jpg # adjust date time image 
jobs -l # list all background 
json_xs < test.json # prettify json 
json_xs -t null < test.json # verify json format 
keepassx & 
kill -0 $! # check background process pid 
killall process 
kill -INT $$ # signal 
kill -l # list signals 
komodo & 
kvm -boot d -m 512 -cdrom archlinux-*.iso # vm 
kvm -hda /tmp/my.img -cdrom boot.iso -boot d # vm 
l 
l ~ 
la 
la ~ 
lastlog # login users 
ldconfig --print-cache # list all libraries 
ldd $(which bash) 
/lib/udev/findkeyboards 
ll 
ln --symbolic -- target source 
locale 
locale --all-locales 
locate file 
log_time_diff < /var/log/syslog | sort --numeric --reverse --key=1 | head 
longer 80 example.txt 
longest < ~/.bash_history 
lpstat -d # default printer cups 
lpstat -v # list all printers cups 
lsblk # list block device disk 
lsb_release --all # linux version distro 
lscpu # hardware architecture processor 
ls --directory /proc/[^0-9]* # metadata 
lshw 
ls -l --all # list 
ls -l --block-size 1 # list files size bytes 
ls -l --directory ./*/ # list directories 
ls -l --reverse # list 
ls -lt /var/log/ # sort time list 
lsmod # kernel modules 
lsof +c 0 | grep gnome-terminal | wc --lines # count files 
lsof # files 
lsof -i :22 # internet port network 
lsof -i tcp # internet network 
lsof -p $$ # files process 
lspci | grep --ignore-case audio 
lsusb | grep --ignore-case cam 
lyx file.lyx 
m4 --version # compile dev 
make 2>&1 | tee > make_compile.out~ # compile dev 
make clean # dev 
make # compile dev 
make configure # dev 
 make --directory ~/dev/tilde clean 
make && echo finished > ~/.events/compilation || echo failed > ~/.events/compilation 
make explain 2>&1 | grep MAKE # dev 
make explain-MAKE # dev 
make install # dev 
make release # dev 
make test 2>&1 | tee > make_test.out~ # dev 
make test # dev 
make variables # dev 
make variable-SHELL # dev 
man 1p mv # posix help 
man 1p sort # posix help 
man 1p xargs # posix help 
man 2 open # help 
man 3 exit # help 
man 3 printf # help format %d %f %s 
man 5 crontab # help 
man 5 passwd # help password 
man 7 glob # help 
man ack-grep # help 
man add-apt-repository # help 
man addgroup # help 
man adduser # help 
man align_image_stack # help 
man alsamixer # help 
man aplay # help 
man apport-bug # help 
man apport-cli # help 
man apropos # help 
man apt-cache # help 
man aptdcon # help 
man apt-get # help 
man apt-key # help 
man apt-listchanges # help 
man apt-rdepends # help 
man arandr # help 
man arch # help 
man arecord # help 
man ascii # help 
man ash # help 
man asn1parse # help 
man avahi-browse # help 
man avconv # help 
man awk # help 
man basename # help 
man bashdb # help 
man bash # help 
man bc # help 
man blkid # help 
man builtins # help bash 
man bunzip2 # help 
man cal # help 
man charsets # help 
man checkbashisms # help 
man chfn # help 
man chgrp # help 
man chmod # help 
man chown # help 
man chroot # help 
man clamtk # help 
man cloc # help 
man cmp # help 
man comm # help 
man convert # help 
man cp # help 
man cppcheck # help 
man createdb # help postgresql 
man createuser # help 
man crontab # help 
man csplit # help 
man curl # help 
man cut # help 
man debhelper # help 
man delgroup # help 
man deluge # help 
man deluser # help 
man df # help 
man dhclient # help 
man dh_make # help 
man diff # help 
man dig # help 
man digikam # help 
man dirname # help 
man dmidecode # help 
man dos2unix # help 
man dot # help 
man dotty # help 
man download-mibs # help 
man dpkg # help 
man dpkg-shlibdeps # help 
man dropdb # help postgresql 
man dropuser # help 
man dsa # help 
man du # help 
man eject # help 
man ent # help 
man env # help 
man errno # help 
man etherape # help 
man exiv2 # help 
man expand # help 
man expect # help 
man extundelete # help 
man fakeroot # help 
man fdisk # help 
man feh # help 
man ffmpeg # help 
man file # help 
man find # help 
man firefox # help 
man fmt # help 
man fold # help 
man fortune # help 
man free # help 
man fuseiso # help 
man fusermount # help 
man gcc # help 
man genrsa # help 
man getconf # help 
man getent # help 
man gethostip # help 
man getopt # help 
man gfortran # help 
man git # help 
man gitk # help 
man gitstats # help 
man git-svn # help 
man gksudo # help 
man glabels # help 
man gnome-calculator # help 
man gnome-control-center # help 
man gnome-keyring-daemon # help 
man gnome-screensaver-command # help 
man gnome-screensaver # help 
man gnome-shell # help 
man gnome-specimen # help 
man gnome-terminal # help 
man gpasswd # help 
man gpg # help 
man grep # help 
man groups # help 
man gunzip # help 
man head # help 
man <(help2man help2man) # help 
man hexdump # help 
man hier # help 
man history # help 
man host # help 
man hostname # help 
man hosts # help 
man htop # help 
man id # help 
man ifdown # help 
man iftop # help 
man ifup # help 
man imake # help 
man imapfilter_config # help 
man imapfilter # help 
man indent # help 
man infocmp # help 
man initdb # help postgresql server database 
man inotify # help 
man inotifywait # help 
man install # help 
man interfaces # help 
man ionice # help 
man iostat # help 
man iotop # help 
man ipcalc # help 
man ip # help 
man iptables # help 
man iwconfig # help 
man java # help 
man jedit # help 
man jhead # help 
man join # help 
man json_pp # help 
man json_xs # help 
man keepassx # help 
man kill # help 
man kvm # help 
man ldconfig # help 
man ldd # help 
man ld # help 
man lighttpd # help 
man line # help 
man lintian # help 
man ln # help 
man locate # help 
man logger # help 
man lpadmin # help 
man lpstat # help 
man lsblk # help 
man lsb_release # help 
man lscpu # help 
man lsof # help 
man lynx # help 
man make # help 
man man # help 
man markdown # help 
man md5sum # help 
man mencoder # help 
man mkdir # help 
man mkfifo # help 
man mktemp # help 
man mount # help 
man mp3fs # help 
man mutt # help 
man mv # help 
man nautilus # help 
man ncal # help 
man nc # help 
man nethogs # help 
man netstat # help 
man nfs # help 
man nice # help 
man nl # help 
man nmap # help 
man nmcli # help 
man nm # help 
man node # help 
man notify-send # help 
man nslookup # help 
man ntpdate # help 
man ntpd # help 
man ntpq # help 
man objdump # help 
man od # help 
man openssl # help 
man pacman # help 
man pager # help 
man paperconfig # help 
man passwd # help 
man paste # help 
man patch # help 
man pbuilder # help 
man pdebuild # help 
man pdfimages # help 
man pdfinfo # help 
man pdftk # help 
man pep8 # help 
man perldoc # help 
man perl # help 
man perlrun # help 
man pg_dumpall # help postgresql backup 
man pg_dump # help postgresql backup 
man pgrep # help 
man php # help 
man pidgin # help 
man pidof # help 
man ping # help 
man pip # help 
man pkcs8 # help 
man pngcrush # help 
man pod2man # help 
man postgres # help postgresql server 
man ppc386 # help 
man proc # help 
man ps # help 
man psql # help 
man psql # help postgresql 
man pstree # help 
man pts # help 
man puppet # help 
man python # help 
man qemu # help 
man quilt # help 
man rake # help 
man rdesktop # help 
man readelf # help 
man readlink # help 
man reboot # help 
man recordmydesktop # help 
man rename # help 
man resize # help 
man rm # help 
man route # help 
man rrdcreate # help 
man rrddump # help 
man rrdgraph # help 
man rrdinfo # help 
man rrdlast # help 
man rrdtool # help 
man rrdupdate # help 
man rsa # help 
man rsync # help 
man ruby # help 
man runlevel # help 
man sane-find-scanner # help 
man scanimage # help 
man scp # help 
man screen # help 
man script # help 
man scrot # help 
man seq # help 
man service # help 
man setkeycodes # help 
man setxkbmap # help 
man sha1sum # help 
man sha512sum # help 
man sh # help 
man showkey # help 
man shred # help 
man shuf # help 
man shunit2 # help 
man shutdown # help 
man signal # help 
man simple-scan # help 
man sipcalc # help 
man sleep # help 
man sloccount # help 
man snmpd # help 
man snmpget # help 
man snmptranslate # help 
man snmpwalk # help 
man software-properties-gtk # help 
man sort # help 
man speaker-test # help 
man splint # help 
man ssh-agent # help 
man ssh_config # help 
man ssh-copy-id # help 
man sshd # help 
man sshfs # help 
man ssh # help 
man ssh-keygen # help 
man stat # help 
man stdlib.h # help dev c header 
man strace # help 
man strfile # help 
man strftime # help format string date 
man stty # help 
man sudoers # help 
man sudo # help 
man su # help 
man sweethome3d # help 
man synclient # help 
man tac # help 
man tail # help 
man tar # help 
man tee # help 
man tig # help 
man timedatectl # help 
man time # help 
man timeout # help 
man tkmib # help 
man tofrodos # help 
man top # help 
man touch # help 
man tput # help 
man traceroute # help 
man trash # help 
man tr # help 
man tty # help 
man udevadm # help 
man umask # help 
man umount # help 
man uname # help 
man unetbootin # help 
man unexpand # help 
man unicode # help 
man uniname # help 
man uniq # help 
man unix2dos # help 
man unzip # help 
man update-alternatives # help 
man updatedb # help 
man update-java-alternatives # help 
man uptime # help 
man urandom # help 
man usermod # help 
man utf8 # help 
man valgrind # help 
man vim # help 
man vipw # help 
man virtualbox # help 
man visudo # help 
man vncpasswd # help 
man vncserver # help 
man vncviewer # help 
man watch # help 
man wc # help 
man wdiff # help 
man wget # help 
man whatis # help 
man w # help 
man which # help 
man who # help 
man whois # help 
man wnpp-alert # help 
man x509 # help 
man xargs # help 
man xautolock # help 
man xclip # help 
man xdg-desktop-menu # help 
man xdotool # help 
man xev # help 
man xinput # help 
man xmkmf # help 
man xmllint # help 
man xmodmap # help 
man Xorg # help 
man xrandr # help 
man xrdb # help 
man xscreensaver-command # help 
man xscreensaver-demo # help 
man xsltproc # help 
man xwininfo # help 
man xxd # help 
man yes # help 
man youtube-dl # help 
man zip # help 
markdown_page README.markdown > README.xhtml && x-www-browser README.xhtml 
markdown_page ~/todo/*.markdown > ~/todo.xhtml && x-www-browser ~/todo.xhtml # list 
markdown README.markdown 
markdown README.markdown | lynx -stdin 
markdown README.markdown > README.html 
md5sum --check md5sums.txt # checksum 
md5sum file # checksum 
meld . & # diff 
meld original mine & # diff 
meld other original mine & # diff 
meld <(ssh example.org cat /etc/hosts) <(ssh example2.org cat /etc/hosts) # diff 
meld <(wget --output-document - http://git.gnome.org/browse/meld/plain/.gitignore?id=250066249e06241e3bfd3863c1a233fb45f40a12) <(wget --output-document - http://git.gnome.org/browse/meld/plain/.gitignore) # diff 
meld <(wget --output-document - http://svn/repo/path?p=1) <(wget --output-document - http://svn/repo/path?p=2) # diff 
mencoder -fps 10 -nosound -ovc copy timelapse.mp4 -o timelapse-slow.mp4 # video 
mian ~/.minecraft/saves/New\ World 
minecraft & 
mkdir -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
mkdir mp3 
mkdir test 
mkfifo pipe1 pipe2 
mkgithub --configure --https --verbose --user l0b0 
mkgithub --configure --ssh --verbose --user l0b0 
mkgithub ~/dev/algorithms 
mkgithub ~/dev/arm 
mkgithub ~/dev/awmtt 
mkgithub ~/dev/bm 
mkgithub ~/dev/bookmarklets 
mkgithub ~/dev/bookmarklets-janmoesen 
mkgithub ~/dev/CERN-Central-Library-bookmark 
mkgithub ~/dev/coffeescript-jedit 
mkgithub ~/dev/coin-sorter 
mkgithub ~/dev/ComputerCraft 
mkgithub ~/dev/count 
mkgithub ~/dev/cronlist 
mkgithub ~/dev/crumbling-beaker 
mkgithub ~/dev/csv2zarafa-contacts 
mkgithub ~/dev/cvsignore2svn 
mkgithub ~/dev/dialogue 
mkgithub ~/dev/dialogue.wiki 
mkgithub ~/dev/difff 
mkgithub ~/dev/diff-ignore-moved-lines 
mkgithub ~/dev/digbuild 
mkgithub ~/dev/duplicates 
mkgithub ~/dev/export 
mkgithub ~/dev/fgit 
mkgithub ~/dev/filterous 
mkgithub ~/dev/git 
mkgithub ~/dev/git-bisect-example 
mkgithub ~/dev/graphics 
mkgithub ~/dev/hello-world 
mkgithub ~/dev/highlight 
mkgithub ~/dev/https-everywhere 
mkgithub ~/dev/Hypervolume 
mkgithub ~/dev/img2scad 
mkgithub ~/dev/img2vcard 
mkgithub ~/dev/indentect 
mkgithub ~/dev/ipcalc 
mkgithub ~/dev/job-board 
mkgithub ~/dev/lfmcol2csv 
mkgithub ~/dev/lines 
mkgithub ~/dev/logitech-access-keyboard-bindings 
mkgithub ~/dev/lwpb 
mkgithub ~/dev/make-includes 
mkgithub ~/dev/make-links 
mkgithub ~/dev/makeThin 
mkgithub ~/dev/meta2jpeg 
mkgithub ~/dev/metal-book 
mkgithub ~/dev/mian 
mkgithub ~/dev/minecraft-scripts 
mkgithub ~/dev/mkgithub 
mkgithub ~/dev/mount-image 
mkgithub ~/dev/msort 
mkgithub ~/dev/nestable-tube-table 
mkgithub ~/dev/offlickr 
mkgithub ~/dev/OpenDUNE 
mkgithub ~/dev/OpenSCAD-Minimizer 
mkgithub ~/dev/oshw-logo 
mkgithub ~/dev/paperless 
mkgithub ~/dev/paperless.wiki 
mkgithub ~/dev/parametric-box 
mkgithub ~/dev/paths2openscad 
mkgithub ~/dev/peel 
mkgithub ~/dev/Platonic-solids 
mkgithub ~/dev/progit 
mkgithub ~/dev/Project-Euler 
mkgithub ~/dev/pspipe 
mkgithub ~/dev/qr2scad 
mkgithub ~/dev/random 
mkgithub ~/dev/RAYT 
mkgithub ~/dev/ruler 
mkgithub ~/dev/schemaspy2svg 
mkgithub ~/dev/screensaver-info 
mkgithub ~/dev/see-colon 
mkgithub ~/dev/shell-includes 
mkgithub ~/dev/shunit-ng 
mkgithub ~/dev/SICP 
mkgithub ~/dev/Smooth-CoffeeScript 
mkgithub ~/dev/spark 
mkgithub ~/dev/Standardy 
mkgithub ~/dev/subsurface 
mkgithub ~/dev/teaching_C 
mkgithub ~/dev/tilde 
mkgithub ~/dev/trim 
mkgithub ~/dev/txt2cloud 
mkgithub ~/dev/unflickr 
mkgithub ~/dev/unrarr # compress 
mkgithub ~/dev/urlwatcher 
mkgithub ~/dev/vcard 
mkgithub ~/dev/vcard2mutt 
mkgithub ~/dev/vcf 
mkgithub ~/dev/worktime 
mkgithub ~/dev/xbug 
mkgithub ~/dev/xdg-menu-to-awesome-wm 
mkgithub ~/dev/xFormsCal 
mkgithub ~/dev/xkcd1110 
mkgithub ~/dev/xkillthis 
mkgithub ~/dev/xml 
mkgithub ~/dev/xspf2csv 
mkgithub ~/dev/xterm-color-count 
mkgithub --help 
mogrify -crop 2316x1303+0+0 ./*.jpg 
mogrify -format jpg ./*.CR2 # convert 
mount-image ./*.iso 
mount # list all 
mount --no-mtab --options remount,defaults /dev/sda1 / 
mountpoint /home 
mp3fs -obitrate=256 ~/music/ ~/mp3 # mount 
mutt 
mutt -d 5 
mutt -i <(git request-pull HEAD https://github.com/l0b0/project) -s "Pull request" address@example.org # email 
mutt-ldap.pl name # test 
mutt -v 
mutt -vv 
mv file{.orig,} 
ncal -3bM 
nc -l 12345 & netstat --tcp --all | grep :12345 && kill $! # test network listen port 
neato -O -Tsvg ./*.dot 
nethack-qt & 
netstat 
netstat --all # internet connections sockets 
nice --adjustment 19 ionice --class 3 du | sort --numeric-sort --key 1 # priority cpu io 
nl ~/.bashrc 
nmap -T Aggressive -A -v 192.168.0.1 
nmap -v -sP 192.168.0.0/24 
nmcli con # network connections list 
nmcli dev # network devices list 
nmcli nm # network manager status 
nm libfoo.so | grep '^ *U ' # dev undefined object 
node # javascript 
node -v 
notify-send "summary" "body" 
npm config set registry http://registry.npmjs.org/ 
npm install -g coffee-script # coffeescript 
npm ls -g 
npm -v 
nslookup example.org # dns internet lookup network 
ntpq -p # query list peers 
objdump --private-headers $(which bash) | grep NEEDED | awk '{print $2}' | xargs dpkg --search | cut --delimiter ':' --fields 1 | sort --unique # binary dependency packaging 
openscad ~/dev/crumbling-beaker/beaker.scad & 
openssl asn1parse -in ~/.ssh/id_?sa # decode key 
openssl genrsa -des3 -out private.pem 4096 # create des3 encrypted private rsa key hex 
openssl req -new -key private.pem -out request.pem # create x509 certificate signing request hex 
openssl x509 -noout -fingerprint -text < my.crt 
openssl x509 -req -days 1 -in request.pem -signkey private.pem -out certificate.pem # create self-signed x509 certificate hex 
pacman --sync --search bash # search packages 
pager /etc/issue 
pager /etc/passwd # password 
pager Makefile 
pager /proc/bus/input/devices 
pager --RAW-CONTROL-CHARS filename # color 
pager --raw-control-chars typescript 
pager /sys/class/dmi/id/product_name 
pager /sys/class/dmi/id/sys_vendor 
pager /usr/share/doc/nethack-common/Guidebook.txt.gz # help 
pager /var/log/auth.log 
pager /var/log/dmesg 
pager /var/log/kern.log 
pager /var/log/messages 
pager /var/log/syslog 
pager /var/log/Xorg.0.log 
paman & # pulseaudio manager 
paprefs & # pulseaudio preference 
passwd # password user 
patch --strip 0 < patch.diff 
(path=$'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n'; diff <(ssh foo 'cat -- '"$(printf %q "$path")") <(ssh bar 'cat -- '"$(printf %q "$path")")) # remote 
PATH=$(IFS=':'; echo "${paths[*]}") 
pavucontrol & # pulseaudio volume 
pdfimages -j ./*.pdf . 
pdfinfo file.pdf 
pdftk A=first.pdf B=second.pdf C=third.pdf cat A B C output target.pdf # concatenate files 
pdftk A=source.pdf cat A1-2 A4-end output target.pdf # remove page 
pep8 setup.py 
perlbrew switch 
perl -c file.pl # check syntax 
perl -d -e 1 # interactive console 
perldoc file.pl # help 
perldoc -f kill # help function 
perl_modules 
perl_module_version URI 
perl -ne 'print join("\n", split(/:/));print("\n");' input # split join 
perl -pe 'chomp if eof' input > output # remove newline eof 
perl --version 
pgrep -P $$ # child processes pids 
pgrep -u root cron 
php --interactive 
php --syntax-check index.php # verify 
php --version 
pidof bash | wc --words # count processes 
pidof init # process pid 
pid=$! # process pid 
ping -c 4 example.org 
ping example.org 
pip help 
pip help install 
pngcrush -brute -d target ./*.png # graphics compress 
PREFIX=~ sudo make install 
printf '\0' | uniname -bcepu # 1 nul escape quote 
printf "\0" | uniname -bcepu # 1 nul escape quote 
printf $"\0" | uniname -bcepu # 1 nul escape quote 
printf \\0 | uniname -bcepu # 1 nul escape quote 
printf \0 | uniname -bcepu # 1 zero escape quote 
printf $'\0' | wc --chars # 0 escape quote 
printf "$IFS" | od --format x1 # string character byte convert hex dump posix 
printf "$IFS" | xxd -groupsize 1 # string character byte convert hex dump 
printf %q $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # escape test 
printf %q "$IFS" # escape bash 
printf %q "$PS1" # escape bash 
printf %s $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' > $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test unicode 
printf %s $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' | uniname -bcp # test unicode 
printf %s $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' | xclip; cmp --verbose <(printf %s $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n') <(xclip -out) # clipboard copy test 
printf %s $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' | xclip -selection clipboard # test clipboard keyboard copy 
printf %s $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' | xclip # test clipboard mouse copy 
printf %s "${IFS:0:1}" 
printf "${USER}%.0s" {1..5} # repeat string 
prove 
prove --recurse 
pry 
ps afux | pager -S # processes list all tree tty 
ps -eo user= | sort | uniq --count | sort --reverse --numeric-sort # processes users 
ps --pid $$ # current shell 
ps --pid "$(find -L /proc/[0-9]*/exe ! -type l | cut --delimiter '/' --fields '3' | paste --serial --delimiters ',')" # non-kernel processes 
ps -p $$ o ppid= # parent pid 
psql --host localhost --port 15432 --dbname postgres --username postgres <<< "COPY(SELECT datname FROM pg_database WHERE datistemplate = FALSE) TO STDOUT;" # forwarding list all postgresql network 
psql --version # postgresql 
ps -U root -u root fu | pager -S # processes list user tree 
ps uw -p $$ # process single pid 
pulseaudio --kill && pulseaudio --start 
puppet describe --short user 
puppet resource --help 
puppet resource --types 
puppet resource user 
puppet resource user root 
pwd # current directory 
python -m py_compile script.py # verify code script 
python -m timeit -s 'text = "sample string"; char = "g"' 'char in text' # timing benchmark 
qemu-img create -f qcow2 /tmp/my.img 10G 
qgit --all . & # gui 
qr2scad < ~/dev/qr2scad/tests/example_big.png > big.scad 
qtpfsgui & # hdr photo editor 
rails console 
rails destroy controller sessions # delete database 
rails destroy scaffold user # delete database 
rails generate controller sessions new create destroy # create database 
rails generate --help 
rails generate migration add_email_to_user email:string email_plain_text_only:boolean # create database 
rails generate scaffold user name:string full_name:string hashed_password:string salt:string description:text password_expiration:datetime birthday:date visits:integer photo:binary enabled:boolean distance:float weight:decimal update_stats:time last_checkout:timestamp # create database 
rails generate spine:scaffold user name # create javascript 
rails new project_name # create 
rails server --environment production --port 3002 # start service web 
rails server --environment test --port 3001 # start service web 
rails server # start service web 
rails --version 
rake assets:clean 
rake db:migrate # all rails database 
rake db:migrate:redo VERSION=20010203123456 # rails database 
rake db:migrate --trace # rails database 
rake db:reset --trace # rails database 
rake db:reset --trace && rails s # database 
rake db:rollback --trace # rails database 
rake db:schema:dump # rails database 
rake db:seed --trace # rails database 
rake db:setup # rails database 
rake db:test:prepare --trace # rails database 
rake routes # rails web 
rake spec # rails test 
rake --tasks # rails 
rake test # rails 
rbash # restricted 
rbenv help # ruby 
rbenv install --list # ruby all install 
rbenv install < .ruby-version && rbenv rehash # ruby install 
rbenv local 1.2.3 # ruby project version 
rbenv version # ruby installed 
rbenv versions # ruby all installed 
rbenv which rails # ruby gem binary path 
rdesktop -r clipboard:CLIPBOARD -k de-ch -g 1280x1024 -r disk:$USER=$HOME hostname & # remote keyboard share windows 
readelf --all $(which readelf) # executable binary 
readlink --canonicalize -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
readlink /proc/$$/fd/0 # symlink source pipe file descriptor pseudo terminal 
read < "/path" 
read -r var 
read <<< "$text" 
recordmydesktop --windowid $(xdotool selectwindow) --no-cursor --full-shots --fps 25 --no-wm-check --no-frame -o ~/out.ogv 
rename --no-act 's/([^-]+)-.*-([^-]+)/$1-$2/' ./*.xml | grep --only-matching ' renamed as .*' | sort | uniq --repeated # safe 
rename --no-act --verbose 's/(\d{4})(\d{2})(\d{2})/$1-$2-$3/' ./* # date 
rename --no-act --verbose 's#/([^/]+)$#/prefix $1#' ./* # prefix 
rename --no-act --verbose 's/.*/sprintf "%04d.jpg", ++$main::Mad/e' ./*.jpg # video 
rename --no-act --verbose 's/\.txt$/\.html/' ./*.txt # extension suffix 
reset # clear log remove terminal text 
rm -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
rmdir ./* 
rmdir -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
rm file 
rm -- ~/pubring.gpg ~/secring.gpg 
route 
rrdtool create test.rrd --start -3600 DS:content:GAUGE:600:U:U RRA:AVERAGE:0.5:1:10 
rrdtool dump test.rrd 
rrdtool graph test.png DEF:content=test.rrd:content:AVERAGE LINE1:content#FF0000:Content 
rrdtool info test.rrd # metadata 
rrdtool - # interactive 
rrdtool last test.rrd # update time 
rrdtool update test.rrd --template content -- -3600:1 -3300:0 -3000:-1 -2700:-2 -2400:2 -2100:U -1800:1 -1500:0 -1200:1 -900:1 -600:1 -300:-2 N:0 
rsync --archive --human-readable --recursive --progress --verbose host:/path /target # network transfer 
ruby -c test.rb # check verify syntax 
ruby --verbose 
runlevel # kernel 
sandbox="$(mktemp --directory)" 
sane-find-scanner # list device 
sass-convert all.s{a,c}ss 
scanimage --list-devices # scanner 
schemaspy2svg ~/db 
schemaspy2svg --help 
scp example.org:/home/jdoe/example.txt . 
scp -P 2222 example.org:/home/jdoe/example.txt . 
scp -r file example.org:~ 
screen 
screen -dRR name # resume 
screen -dRR # resume 
screen -list 
screen -S compile-project 
script --quiet --command "$SHELL" 
sed '9d' file # delete line one-indexed 
sed '/^$/d' file # delete empty lines 
sed '/pattern/r./input.txt' test.txt # insert merge file pattern 
sed --quiet '/^START$/,/END^$/{/^START$/d;/^END$/d;p;}' <<< $'START\nfirst\nEND\nSTART\nsecond\nEND' # extract delimiter lines 
sed '/^[[:space:]]*$/d' file # delete whitespace line 
service snmpd status 
set -o noclobber # file error 
set +o noclobber # file error 
set -o nounset # variable error 
set +o nounset # variable error 
set -o pipefail # error 
set +o pipefail # error 
(set -o posix; set) | grep --only-matching ^COMP[^=]* 
(set -o posix; set) # list all options 
set +o xtrace # disable 
set -o xtrace # enable 
./setup.py test 
setxkbmap -device 11 -layout us # keyboard device config 
setxkbmap -layout us -variant dvorak-alt-intl # keyboard layout config 
setxkbmap -option compose:caps # keyboard 
setxkbmap -print # keyboard settings 
setxkbmap -verbose | awk -F '+' '/^symbols:/ {print $2}' # keyboard layout settings 
sh 
sha1sum --check sha1sums.txt # verify checksum 
sha1sum file # checksum 
sha512sum --check sha512sums.txt # checksum 
sha512sum file # checksum 
shopt nullglob # option get 
shopt # options 
shopt -s dotglob # option set .* 
shopt -s extglob # option set ?(a|b) *(a|b) +(a|b) @(a|b) !(a|b) 
shopt -s globstar # option set ** 
shopt -s globstar && wc --lines ./**/**.ext # count recursive lines 
shopt -s nullglob # option set * 
shopt -u nullglob # option unset * 
shortest < ~/.bash_history 
shred --remove filename # overwrite delete file 
shuf --input-range 0-1 --head-count 1 # random number range 
simple-scan & 
sipcalc 0.0.0.0/0 
sipcalc 192.168.0.1/24 
sleep 1m 
slideshow -f http://github.com/geraldb/slideshow-s6-blank/raw/master/s6blank.txt 
slideshow -t s6blank presentation.md 
sloccount . 
snmpget -v 2c -c public localhost .1.3.6.1.2.1.1.1.0 
snmptranslate -Of .1.3.6.1.2.1.1 # OID 
snmptranslate -On .iso.org.dod.internet.mgmt.mib-2.system # symbol 
snmptranslate -Tl # list all mib oids 
snmpwalk -v 2c -c public localhost .1.3.6.1.2.1.1 # system 
snmpwalk -v 2c -c public localhost # all 
sort --unique --output result.txt source.txt 
source ~/.bash_aliases 
source ~/.bash_aliases_local 
source ~/.bashrc 
speaker-test --channels 2 
splint foo.c 
sqlite3 -line db/development.sqlite3 "select * from table_name" 
ssh-copy-id example.org 
ssh example.org 
ssh example.org < test.sh 
ssh example.org uptime 
sshfs hostname: "/media/${USER}/mountpoint" 
ssh-keygen -f "~/.ssh/known_hosts" -R [1.2.3.4]:1234 # remove public key 
ssh-keygen -l -f /etc/ssh/ssh_host_ecdsa_key.pub # host id ecdsa fingerprint 
ssh-keygen -l -f /etc/ssh/ssh_host_rsa_key # host id rsa fingerprint 
ssh -L 15432:localhost:5432 example.org # local port forwarding postgresql 
ssh -L 5902:localhost:5901 example.org # local port forwarding vnc 
ssh -p 2222 example.org 
ssh -R 9000:localhost:9000 example.org 
ssh -vvv example.org 
ssh -Y example.org # trusted x11 forwarding 
stat --format '%A %U %G %s %y %n' ./* # list permissions user group file 
stat --format %i / # inode 
stat --printf '%A %U %G %s %y %n\0' ./* # list permissions user group file nul 
strace -Cf bash -lc true # count calls profile summary 
strace -fe open ./test.sh 2>&1 >/dev/null | grep --only-matching '^\(\[pid\s\+[0-9]*\] \)\?open("[^"]\+' | grep --only-matching '".*' | cut --characters 2- | sort --unique # script dependencies 
strings $(which strings) 
stty --all # terminal settings 
stty sane # restore terminal state 
sudo add-apt-repository ppa:chrysn/openscad 
sudo addgroup test 
sudo addgroup "$USER" group 
sudo adduser test 
sudo aptdcon --fix-install # package fix rescue daemon 
sudo apt-get autoclean 
sudo apt-get autoremove 
sudo apt-get dist-upgrade 
sudo apt-get install ack-grep # search 
sudo apt-get install adobe-flashplugin 
sudo apt-get install apt-listchanges # package 
sudo apt-get install apt-rdepends # package 
sudo apt-get install arandr # screen layout graphics hardware 
sudo apt-get install arduino arduino-mk avrdude-doc gcc gcc-doc libjna-java-doc libyaml-shell-perl # dev arduino 
sudo apt-get install audacity # audio editor 
sudo apt-get install autoconf autoconf-doc automake automake1.9-doc autotools-dev debhelper debian-policy developers-reference devscripts dh-make fakeroot fp-compiler gfortran gfortran-doc git git-doc gnu-standards gnupg gnupg-doc lintian maint-guide patch patchutils pbuilder perl perl-doc python python-doc quilt xutils-dev # Debian dev 
sudo apt-get install autopano-sift hugin # graphics panorama 
sudo apt-get install bashdb bison bison-doc build-essential expect gcc gcc-doc gettext gettext-doc ia32-libs-multiarch libc6-dev libgconf2-dev libglade2-dev libmysql-java libncurses5-dev libpg-java libreadline6-dev libsqlite3-dev libssl-dev libtiff-doc libtiff-tools libtool libtool-doc libxml2-dev libxml2-doc libxml-simple-perl libxslt1-dev libyaml-dev linux-doc linux-headers-generic linux-image-generic linux-source m4 make make-doc manpages-posix-dev minicom ncurses-dev openssl valgrind w3-recs xdotool xsltproc zlib1g-dev # linux dev 
sudo apt-get install beneath-a-steel-sky dosbox flight-of-the-amazon-queen freeciv-client-sdl freeciv-sound-standard scorched3d teeworlds uqm wesnoth wormux xmoto # game 
sudo apt-get install c-cpp-reference cppcheck indent indent-doc splint splint-doc-html # dev c cpp code lint syntax 
sudo apt-get install chromium-browser lynx-cur # web 
sudo apt-get install clamav clamtk # antivirus 
sudo apt-get install cloc sloccount # dev code 
sudo apt-get install colordiff cvs git-core git-cvs git-doc git-gui git-svn gitk gitstats meld odt2txt qgit subversion tig # vcs 
sudo apt-get install comix feh # graphics viewer 
sudo apt-get install cpanminus # perl 
sudo apt-get install csvtool 
sudo apt-get install curl wget # web 
sudo apt-get install default-jre # java 
sudo apt-get install deluge # torrent 
sudo apt-get install dfo # Flickr 
sudo apt-get install digikam digikam-doc exiv2 gimp gimp-help-en glabels gnuplot gnuplot-doc graphviz graphviz-doc imagemagick imagemagick-doc inkscape jhead pdftk pngcrush psutils qtpfsgui rapid-photo-downloader rawstudio rawtherapee # graphics 2d metadata exif jpeg 
sudo apt-get install enigmail esmtp imapfilter mutt muttprint offlineimap urlview # email 
sudo apt-get install enscript # convert postscript 
sudo apt-get install ent 
sudo apt-get install etherape ipcalc nmap sipcalc traceroute # network 
sudo apt-get install extundelete 
sudo apt-get install fakeroot # chroot 
sudo apt-get install ffmpeg # video 
sudo apt-get install fortune-mod # strfile 
sudo apt-get install fuseiso 
sudo apt-get install gawk 
sudo apt-get install gedit gedit-developer-plugins 
sudo apt-get install git-buildpackage 
sudo apt-get install gnome-specimen # font graphics preview 
sudo apt-get install gnome-tweak-tool 
sudo apt-get install gtk-recordmydesktop # video 
sudo apt-get install help2man # convert 
sudo apt-get install hplip-gui # printer 
sudo apt-get install htop iftop iotop nethogs powertop # monitor cpu memory storage network 
sudo apt-get install inotify-tools # shell 
sudo apt-get install ipython ipython-doc pep8 pychecker pyflakes pylint python-dev python-doc python-lxml python-matplotlib python-matplotlib-doc python-pip python-pydot # python dev 
sudo apt-get install jedit # editor 
sudo apt-get install keepassx 
sudo apt-get install kvm qemu # vm virtualization 
sudo apt-get install libav-tools # video 
sudo apt-get install libdatetime-format-strptime-perl 
sudo apt-get install libdvdcss2 ubuntu-restricted-extras w64codecs x264 # audio video codec 
sudo apt-get install libfreeimage3 lsb-core googleearth-package xfonts-75dpi xfonts-100dpi && make-googleearth-package && sudo dpkg -i googleearth*.deb && rm googleearth*.deb 
sudo apt-get install libpg-java libpq-dev pgadmin3 # dev postgresql schemaspy 
sudo apt-get install libva-glx1 vainfo xvba-va-driver && vainfo # video acceleration h.264 
sudo apt-get install lighttpd # web server 
sudo apt-get install lyx # latex 
sudo apt-get install markdown # convert 
sudo apt-get install mencoder # video 
sudo apt-get install mp3fs # convert 
sudo apt-get install msort 
sudo apt-get install nethack-qt nethack-spoilers # game 
sudo apt-get install nfs-common # filesystem 
sudo apt-get install ntp-doc 
sudo apt-get install openscad 'sweethome3d*' # cad graphics 3d 
sudo apt-get install openssh-server # ssh server 
sudo apt-get install paman paprefs pavucontrol # pulseaudio sound configuration 
sudo apt-get install php5-cli php5-dev # php dev 
sudo apt-get install pidgin # im 
sudo apt-get install playonlinux # games 
sudo apt-get install postgresql 
sudo apt-get install python-gdata python-gdata-doc # python google export 
sudo apt-get install rar unrar # compress 
sudo apt-get install rdesktop # internet 
sudo apt-get install --reinstall package 
sudo apt-get install rrdtool 
sudo apt-get install rsync # filesystem 
sudo apt-get install screen # virtual terminal 
sudo apt-get install shunit2 # test bash shell zsh 
sudo apt-get install snmpd snmp-mibs-downloader tkmib # snmp mib viewer 
sudo apt-get install sqlite3 sqlite3-doc # database server 
sudo apt-get install sshfs 
sudo apt-get install teamspeak-client # chat voice 
sudo apt-get install tofrodos # convert newline 
sudo apt-get install ttf-bitstream-vera ttf-dejavu ttf-lyx ttf-xfree86-nonfree # font 
sudo apt-get install unetbootin 
sudo apt-get install uniutils # unicode 
sudo apt-get install vagrant virtualbox-guest-additions-iso # dev environment 
sudo apt-get install varicad2012-en # cad graphics 3d 
sudo apt-get install videolan-doc vlc vlc-plugin-pulse # video audio 
sudo apt-get install vim vim-rails # editor 
sudo apt-get install wine winetricks # windows 
sudo apt-get install xautolock 
sudo apt-get install xclip 
sudo apt-get install xournal # editor pdf 
sudo apt-get install xserver-xephyr 
sudo apt-get install youtube-dl 
sudo apt-get purge 'ubuntuone-*' unity-lens-friends unity-lens-music unity-lens-photos unity-lens-shopping unity-lens-video zeitgeist # unity spyware 
sudo apt-get update 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E6A233DBE3AFBEFC # jedit 
sudo blkid -o list 
sudo chfn -f "My Name" "$USER" # full name 
sudo chgrp --recursive nogroup -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
sudo chown nobody "$sandbox" 
sudo chown "$USER":"$(printf %q "$(groups | awk '{print $1}')")" "/media/${USER}/mountpoint" 
sudo chroot /var/jail/"$USER" su --login "$USER" # jail 
sudo cpanm Net::LDAP # install ldap 
sudo cp /sys/class/hwmon/hwmon0/device/fan1_max /sys/class/hwmon/hwmon0/device/fan1_output # hardware macmini4,1 speed 
sudo crontab -e # edit 
sudo delgroup test # delete group 
sudo deluser test # delete user 
sudo ~/dev/tilde/scripts/install-all.sh 
sudo ~/dev/tilde/scripts/suspend-on-close.sh 
sudo dmidecode 
sudo dmidecode --string system-product-name 
sudo dmidecode --string system-serial-number 
sudo dmidecode --type 1 
sudo dmidecode --type system 
sudo do-release-upgrade # ubuntu distro 
sudo download-mibs 
sudo dpkg-reconfigure ca-certificates 
sudo dpkg-reconfigure keyboard-configuration 
sudo editor /etc/apt/sources.list 
sudo editor /etc/default/keyboard 
sudo editor /etc/fstab # mount points 
sudo editor /etc/hosts # network 
sudo editor /etc/network/interfaces 
sudo editor /etc/postgresql/*/main/pg_hba.conf 
sudo editor /etc/rc.local 
sudo editor /etc/resolv.conf # dns network 
sudo editor /etc/X11/xorg.conf 
sudo /etc/init.d/postgresql reload 
sudo extundelete --restore-directory /dir/ /dev/sda1 
sudo fdisk -l # list all disks 
sudo gem install slideshow 
sudo gpasswd --add $USER group # user add group 
sudo grub-install /dev/sda # fix boot mbr 
sudo hdparm -I /dev/sda # harddisk hardware properties 
sudo ifdown wlan0 # network interface disable 
sudo iftop # bandwidth network interface monitor 
sudo ifup wlan0 # network interface enable 
sudo iotop --batch --iter 1 # i/o storage 
sudo iotop # i/o storage repeat 
sudo ip addr add 1.2.3.4/24 dev eth0 # network address 
sudo ip addr del 1.2.3.4/24 dev eth0 # network address delete 
sudo ip link set dev eth0 up # network enable device 
sudo ip route add default via 1.2.3.4 dev eth0 
sudo ip route del default via 1.2.3.4 dev eth0 
sudo iptables --list # list all firewall rules networ 
sudo ldconfig 
sudo loadkeys dvorak # keyboard layout vt terminal 
sudo lpadmin -d printername # set default printer cups 
sudo lshw | pager 
sudo make distclean 2>&1 | tee make_distclean.out~ 
sudo make docinstall 2>&1 | tee make_docinstall.out~ 
sudo make install 
sudo make install 2>&1 | tee make_install.out~ 
sudo make pkginstall 2>&1 | tee make_pkginstall.out~ 
sudo make topclean 2>&1 | tee make_topclean.out~ 
sudo make uninstall 
sudo mkdir "/media/${USER}/mountpoint" 
sudo mount --all 
sudo mount --options remount,ro /dev/sda1 # readonly restore 
sudo mount --options remount,rw /dev/sda1 # writeable 
sudo mount --types tmpfs --options size=1m tmpfs -- "$(mktemp --directory --tmpdir -- ramdisk.XXXXXXXXXX)" # create ramdisk partition 
sudo nethogs wlan0 # network monitor 
sudo netstat --listening --tcp --numeric-ports --program | grep '\(^[A-Z]\|^\([^[:space:]]\+[[:space:]]\+\)\{3\}[^[:space:]]\+:22\b\)' # internet connections server search 
sudo ntpdate pool.ntp.org # update date time clock 
sudo pacman --sync alsa-plugins alsa-utils aspell-de aspell-en aspell-fr awesome bash-completion bc ekiga esmtp evince file-roller firefox flashplugin git gnome-icon-theme gnome-keyring gparted hunspell-de hunspell-en hunspell-fr jedit keepassx lsof make meld mutt net-tools ntfs-3g ntp offlineimap openssh pidgin scrot slim thunar thunar-archive-plugin thunar-volman tigervnc tk ttf-bitstream-vera ttf-dejavu vim vlc xorg-server xorg-server-common xorg-xinit xorg-xrandr xorg-xrdb xournal xscreensaver xterm # desktop 
sudo pacman --sync deluge pygtk # torrent gui 
sudo pacman --sync --refresh --sysupgrade # upgrade system 
sudo pacman --sync wine winetricks # windows 
sudo paperconfig --paper a4 # set print size 
sudo passwd --delete root # disable account user 
sudo perl -n -e 'use DateTime::Format::Strptime; my $parser = DateTime::Format::Strptime->new( pattern => "%B %d %Y"); m/^(\w+ \d+ )(.*)/; print ($parser->parse_datetime("$1" . DateTime->now->year)->ymd, " ", $2, "\n");' /var/log/syslog # date format iso 
sudo pip install --upgrade https://github.com/l0b0/qr2scad/tarball/master 
sudo pip install --upgrade pip # python 
sudo pip install --upgrade vcard # validator 
sudo pip uninstall vcard # validator 
sudo powertop # power monitoring configuration 
sudo reboot # restart 
sudo sed --in-place 's/^#LEDS=/LEDS=/' /etc/kbd/config # enable capslock boot 
sudo sed --in-place 's/^mibs/#mibs/' /etc/snmp/snmp.conf # disable 
sudo service cups restart 
sudo service postgresql reload 
sudo service postgresql status 
sudo sh -c 'add-apt-repository "deb http://repository.spotify.com stable non-free" && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 94558F59 && apt-get update && apt-get install spotify-client' 
sudo sh -c 'add-apt-repository ppa:voria/ppa && apt-get update && apt-get install samsung-backlight' 
sudo sh -c 'add-apt-repository ppa:webupd8team/java && apt-get update && apt-get install oracle-java7-installer oracle-java7-set-default intellij-idea-ce && update-java-alternatives -s java-7-oracle' # oracle java sdk jdk intellij ide 
sudo sh -c 'apt-get install awesome awesome-extra gnome-session-fallback notification-daemon && printf "%s\n" "[Desktop Entry]" "Version=1.0" "Type=Application" "Name=awesome" "TryExec=awesome" "Exec=awesome" > /usr/share/applications/awesome.desktop && printf "%s\n" "[GNOME Session]" "Name=awesome" "RequiredComponents=gnome-settings-daemon;" "RequiredProviders=windowmanager;notifications;" "DefaultProvider-windowmanager=awesome" "DefaultProvider-notifications=notification-daemon" > /usr/share/gnome-session/sessions/awesome.session && printf "%s\n" "[Desktop Entry]" "Name=awesome GNOME" "Comment=GNOME with awesome WM" "TryExec=gnome-session" "Exec=gnome-session --session=awesome" "Type=Application" > /usr/share/xsessions/gnome-awesome.desktop' # awesome wm gnome desktop 
sudo sh -c 'apt-get install hunspell-de-de hunspell-fr language-pack-de language-pack-fr language-pack-nb myspell-nb && find /usr/share/hunspell \( \( -name "en_*.aff" -o -name "en_*.dic" \) -not -name "en_GB*" \) -o \( -type l \( -name "*.aff" -o -name "*.dic" \) \) -exec mv --verbose {} {}.bak \;' # language dictionary english l10n german french norwegian 
sudo sh -c 'apt-get update && apt-get upgrade --yes && if [ -f /var/run/reboot-required ]; then echo You should reboot; fi' 
sudo sh -c 'dhclient -r wlan0 && dhclient wlan0' # request refresh dhcp ip 
sudo sh -c 'ip addr add 192.168.0.99/16 wlan0 && dhclient wlan0' # set ip address network 
sudo sh -c "mkdir -p /var/lib/rrdcached/db /var/lib/rrdcached/journal && chown $(printf %q "$USER"):$(printf %q "$(groups | awk '{print $1}')") /var/lib/rrdcached/db /var/lib/rrdcached/journal && apt-get install rrdcached" # fix ubuntu rrdcached install bug 985341 
sudo sh -c 'tail --follow name --retry --lines 0 $(find /var/log/ -type f -exec file -- {} + | grep ":.*\(ASCII\|UTF\)" | cut --delimiter : --field 1)' # text 
sudo showkey # keyboard 
sudo strace -p 123 # process 
sudo systemctl enable sshd.service 
sudo systemctl restart dhcpcd.service 
sudo systemctl start sshd.service 
sudo tail --follow=name --retry --lines 0 /var/log/syslog 
sudo tee /sys/class/hwmon/hwmon0/device/fan1_output <<<5500 # hardware macmini4,1 speed 
sudo traceroute -4 -p 1234 -T example.org # ipv4 port tcp network 
sudo umount "/media/${USER}/mountpoint" 
sudo umount ~/mp3 
sudo update-alternatives --config java # interactive 
sudo update-alternatives --set editor "$(which vim.basic)" # default 
sudo update-alternatives --set x-www-browser "$(which firefox)" # default 
sudo updatedb 
sudo update-grub 
sudo -u postgres createuser --pwprompt username 
sudo -u postgres dropuser username 
sudo -u postgres pg_dumpall > backup.sql # postgresql backup 
sudo -u postgres pg_dump postgres > backup.sql # postgresql backup 
sudo -u postgres psql <<< "COPY(SELECT datname FROM pg_database WHERE datistemplate = FALSE) TO STDOUT;" # list all postgresql 
sudo -u postgres psql <<< "COPY(SELECT extract(epoch from now())::Integer) TO STDOUT;" # unix integer timestamp 
sudo -u postgres psql --dbname my_db <<< "\dt my_schema.*" # database schema tables list all postgresql 
sudo -u postgres psql --dbname postgres < dump.sql # postgresql import 
sudo -u postgres psql --dbname postgres # postgresql login interactive 
sudo -u postgres psql <<< "\dn" # schemas list all postgresql 
sudo -u postgres psql <<< "\dt" # public schema tables list all postgresql 
sudo -u postgres psql <<< "\du" # users list all postgresql 
sudo -u postgres psql <<< "\encoding" # postgresql db encoding 
sudo -u postgres psql <<< "SELECT * FROM pg_stat_activity;" # list sessions processes postgresql 
sudo -u postgres psql --single-transaction --file backup.sql # restore postgresql 
sudo -u postgres psql --variable name="Robert'); DROP TABLE Students; --" <<< "COPY(SELECT :'name') TO STDOUT;" # test escape literal postgresql 
sudo -u postgres service postgresql reload # configuration 
sudo usermod --gid group "$USER" # change default group 
sudo usermod --groups "$(id --name --groups | sed 's/ \?group \?/ /g;s/ /,/g;s/^,//;s/,$//')" "$USER" # remove group 
sudo vipw # edit password users 
sudo vipw --group # edit groups users members 
sudo visudo # permissions security 
sudo Xorg :1 -configure 
sum <<< '2 2' 
svn add . 
svn blame --extensions --ignore-all-space Makefile 
svn cat --revision 1 Makefile | pager 
svn checkout http://svn/repo ~/dir 
svn commit --message "Test" 
svn commit --non-recursive doc 
svn copy http://svn/repo/trunk http://svn/repo/branches/branch-name 
svn copy --message "Version 0.1 alpha" http://svn/repo/trunk http://svn/repo/tags/0.1a 
svn delete --force file 
svn delete --keep-local file 
svn diff 
svn diff --change 1 
svn diff --change 1 --extensions --ignore-all-space 
svn diff --diff-cmd diff > patch.diff 
svn diff --extensions --ignore-all-space 
svn diff --extensions --ignore-all-space --ignore-eol-style 
svn diff --extensions --ignore-space-change 
svn diff --extensions --unified 
svn diff --extensions --unified > patch.diff 
svn diff | pager 
svn diff --revision 1:HEAD 
svn diff --revision PREV 
svn help 
svn help blame | pager 
svn help cat | pager 
svn help checkout | pager 
svn help commit | pager 
svn help copy | pager 
svn help delete | pager 
svn help diff | pager 
svn help help | pager 
svn help info | pager 
svn help list | pager 
svn help log | pager 
svn help merge | pager 
svn help | pager 
svn help propdel | pager 
svn help propedit | pager 
svn help propset | pager 
svn help revert | pager 
svn help status | pager 
svn info 
svn info | sed --quiet 's/^Revision: //p' # revision 
svn list http://svn/repo 
svn log | pager 
svn log --revision 1 
svn log --stop-on-copy | pager 
svn log --verbose | pager 
svn merge http://svn/repo/branches/name 
svn merge --revision 99:HEAD http://svn/repo/branches/name 
svn merge --revision HEAD:99 . # reverse 
svn propdel svn:ignore . 
svn propedit svn:ignore . 
svn propset svn:executable 1 test.sh 
svn propset svn:keywords 'Id HeadURL' test.sh 
svn revert Makefile 
svn revert --recursive . 
svn status 
svn update 
svn --version 
sweethome3d & 
synclient SHMConfig=1 -m 100 | tee synaptics.log # synaptics touchpad debug 
systemctl status slim.service 
TAGS=all guard 
TAGS="$USER" guard 
tar --create --gzip --exclude-vcs --directory ~/dev --file ~/tilde.tar.gz tilde # compress gzip 
tar --extract --gzip --file ~/tilde.tar.gz # decompress gzip 
tar --extract --gzip --transform 's#.*/##' --file ~/tilde.tar.gz # decompress flatten gzip 
tar --list --gzip --file ~/tilde.tar.gz 
telnet localhost 1234 # network 
./test.sh 
./test.sh "first argument" "second argument 
./test.sh "first argument" "second argument" 
tig 
time bash -lc true # benchmark startup login shell 
timedatectl status 
time make test 
timeout 1 sleep 2 
tkmib & 
todos -- file # convert newline 
top 
top -c # command line 
top -p "`pgrep -d ',' bash`" 
touch -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
touch --date '1970-01-01 00:00:00 UTC' test && find . -maxdepth 1 -name test -printf '%T@ %p\n' 
tput colors 
traceroute example.org 
trap -- $'printf %s --\$\`!*@\		\\\\\\\'\\"𠂉\ $\'\\n\'' INT # signal 
trap # signal 
traps="$(trap)" # signal 
! ! true && ! false && echo verified 
tty 
txt2cloud 
txt2cloud --min 3 < $(which txt2cloud) > cloud.xhtml 
type -a true 
udevadm info --export-db 
ulimit -a 
ulimit -c unlimited 
umask 
umask 0077 && ssh-keygen -b 4096 -f ~/.ssh/id_rsa -t rsa && openssl pkcs8 -topk8 -v2 des3 -in ~/.ssh/id_rsa -out ~/.ssh/id_rsa.pk8 && shred --remove ~/.ssh/id_rsa && mv --no-clobber ~/.ssh/id_rsa.pk8 ~/.ssh/id_rsa # create encrypted private public rsa pkcs8 ssh key pair 
umask -S # symbolic 
umount-image ./*.iso 
umount /mnt/foo # unmount device drive 
uname --all 
uname --kernel-name --kernel-release --kernel-version --machine --processor --hardware-platform --operating-system # anonymized 
unetbootin 
unetbootin & 
unexpand --tabs=4 test.txt # convert space tab 
unix2dos contacts.vcf # newline convert 
unset -f function 
unset variable_or_function 
unset -v variable 
unzip file.zip # decompress zip 
unzip -l file.zip # list zip 
update-java-alternatives --jre --list 
uptime 
/usr/local/JDiveLog/bin/jdivelog 
vagrant box add precise32 http://files.vagrantup.com/precise32.box 
vagrant box list # show all 
vagrant destroy # delete vm 
vagrant --help 
vagrant init precise32 # ubuntu vm 
vagrant ssh 
vagrant status 
vagrant up # update vm 
vainfo 
valgrind foo # check memory binary 
vcard ~/contacts/*.vcf 
vim -c "setfiletype sh" test 
virtualbox & 
vlc --ffmpeg-hw --verbose 2 file.1080p.x264.mkv # video h.264 
vlc --full-help | pager 
vlc --fullscreen --deinterlace -1 --deinterlace-mode yadif2x --video-filter postproc --postproc-q 6 --audio-language ja --sub-language en --verbose 2 --advanced dvdsimple:///dev/dvd & 
vlc --fullscreen --deinterlace -1 --deinterlace-mode yadif2x --video-filter postproc --postproc-q 6 --verbose 2 --advanced ./*.avi 
vlc http://www.lynnepublishing.com/surround/www_lynnemusic_com_surround_test.ac3 # audio 
vlc --spdif http://www.lynnepublishing.com/surround/www_lynnemusic_com_surround_test.ac3 # audio 
vmware 
vncpasswd 
vncserver -kill :1 # stop service 
vncserver -list # all 
vncserver -localhost -geometry $(xrandr | sed --quiet 's/.*current \([0-9]*\) x \([0-9]*\).*/\1x\2/p') # start service remote desktop 
vncviewer :1 # local desktop 
vncviewer :2 # remote desktop 
w 
wait # process pid 
watch --color --differences -- git diff --color=always # change 
watch_url http://example.org/ '/irrelevant variable/d;s/search/replacement/g' 1d # change 
wc --lines -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' | head --lines=1 | cut --delimiter ' ' --fields 1 # line count test 
wdiff -w "$(tput bold && tput setaf 1)" -x "$(tput sgr0)" -y "$(tput bold && tput setaf 2)" -z "$(tput sgr0)" path1 path2 # color word diff 
wget --output-document - http://user:password@host/function?id=foo 2>service.log | json_pp # web service 
wget --server-response --output-document=/dev/null http://example.org/ # web header 
whatis mv # exact help man 
which make 
while IFS= read -r -d '' -u 9; do if [[ "$(file --brief --special-files --mime-type -- "$REPLY")" = text/* ]]; then sed --in-place 's/[ \t]\+\(\r\?\)$/\1/;$a\' -- "$REPLY"; else echo "Skipping $REPLY" >&2; fi; done 9< <(find . \( -type d -regex '^.*/\.\(git\|svn\)$' -prune -false \) -o -type f -exec printf '%s\0' {} +) # whitespace eol eof 
while IFS= read -r -d '' -u 9; do jedit -reuseview "$REPLY"; done 9< <(grep --null --files-with-matches --recursive --exclude-dir .git --exclude-dir .svn --exclude-dir CVS --regexp 'pattern' .) # search open files 
while IFS= read -r -d '' -u 9; do printf '%q\n' "${REPLY#* }"; done 9< <(find . -printf '%T@' -exec printf ' %s\0' {} + | sort --general-numeric-sort --zero-terminated) # sort file list modification date 
while IFS= read -r -u 9; do if [[ "$REPLY" =~ .*\.dot$ ]]; then dot -O -Tsvg "$REPLY"; fi; done 9< <(inotifywait --event close_write --format %f --monitor .) 
while IFS= read -r -u 9; do if [[ "$REPLY" =~ .*\.markdown$ ]]; then markdown_page "$REPLY" > "${REPLY%.markdown}.xhtml"; fi; done 9< <(inotifywait --event close_write --format %f --monitor .) 
while IFS= read -r -u 9; do if [[ "$REPLY" =~ .*_test\.rb$ ]]; then rake test; fi; done 9< <(inotifywait --event close_write --format %f --monitor test/*) 
while read; do xdotool windowactivate $REPLY; xdotool key F5; done < <(xdotool search --name "Mozilla Firefox") # refresh 
while sleep 1; do (shopt -s nullglob; events_dir="${HOME}/.events"; for path in "$events_dir"/*; do notify-send --icon="${HOME}/dev/graphics/${USER}.png" "$(basename "$path")" "$(cat "$path")" && rm "$path"; done;) done 
while true; do DISPLAY=:0 compiz --replace; done & # debug wm 
while true; do DISPLAY=:0 gnome-shell --replace; done & # debug wm 
whois example.org # dns lookup internet network 
who # logins users 
wine --version 
wnpp-alert # Debian packaging 
worktime --end=$(date --date=Thursday +%Y-%m-%d) > ~/week.xhtml && x-www-browser ~/week.xhtml 
xclip filename.txt # mouse clipboard copy 
xclip -out # mouse clipboard print stdout 
xclip -selection clipboard filename.txt # keyboard clipboard copy 
xclip -selection clipboard -out # keyboard clipboard print stdout 
xev 
xinput # all keyboard device list 
xinput --list 10 # keyboard device info 
xinput --list-props 10 # keyboard device properties 
xkill 
xmllint --shell input.xml # interactive shell xpath xml 
xmodmap -pp >~/xmodmap 
xprop | grep --color=none "WM_CLASS\|^WM_NAME" 
xrandr --verbose # graphics hardware 
xrdb -load ~/.Xresources 
xrdb -query # list 
xscreensaver-command -lock 
xscreensaver-command -version 
xscreensaver-demo & # settings configuration 
xsltproc --output file.xml ~/dev/xml/filter/filter.xslt file.xml # filter xml xslt replace 
xsltproc --output file.xml file.xslt file.xml # transform xslt xml replace 
xterm -version 
xwininfo -id $(xdotool selectwindow) 
xwininfo -id $(xprop -root | awk '/_NET_ACTIVE_WINDOW\(WINDOW\)/{print $NF}') # current window 
x-www-browser /tmp/xterm-screenshot.*.html 
x-www-browser /usr/share/doc/c-cpp-reference/html/C/cref.html # help c dev 
x-www-browser /usr/share/doc/c-cpp-reference/html/CPLUSPLUS/cref.html # help c++ cpp dev 
x-www-browser /usr/share/doc/debian-policy/policy.html/index.html # packaging linux dev 
x-www-browser /usr/share/doc/developers-reference/index.html # packaging linux dev 
x-www-browser /usr/share/doc/git-doc/index.html # dev help 
x-www-browser /usr/share/doc/ipython/html/index.html # dev help 
x-www-browser /usr/share/doc/maint-guide/html/index.en.html # packaging linux dev help 
x-www-browser /usr/share/doc/nethack-spoilers/gazetteer/index.html # game 
x-www-browser /usr/share/doc/ntp-doc/html/ntpq.html # help 
x-www-browser /usr/share/doc/python-doc/html/index.html # dev help 
x-www-browser /usr/share/doc/python-matplotlib-doc/html/index.html # dev help 
x-www-browser /usr/share/doc/python/python-policy.html/index.html # debian dev help 
x-www-browser /usr/share/doc/w3-recs/html/www.w3.org/TR/2003/REC-SVG11-20030114/index.html # help reference svg 2d graphics 
xxd $(which xxd) | head --lines=1 
yes -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test repeat string 
(yes a & yes b) | cat >/dev/null & ~/dev/pspipe/fdpid.sh 0 $! # process pid pipe stdin 
yes | dh_make --single && printf %s $'*.EX\n*.ex\n' > debian/.gitignore && git add debian 
youtube-dl --output "${HOME}/download/%(upload_date)s-%(title)s-%(id)s.%(ext)s" --continue 'https://www.youtube.com/watch?v=' # download video files 
zip --update file.zip input # add file compress zip 
zless /usr/share/doc/autotools-dev/README.Debian.gz # help 
zless /usr/share/doc/devscripts/README.gz # help 
zless /usr/share/doc/rar/rar.txt.gz # help compress git mergetool 
