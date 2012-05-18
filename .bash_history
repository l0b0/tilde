ack-grep -a --ignore-dir .jhw-cache --ignore-dir .sass-cache --ignore-dir log --ignore-dir public --ignore-dir tmp "pattern" . # search rails 
ack-grep "pattern" . # search 
add-apt-repository --help 
alias ls 
aplay -L # audio 
apport-bug package # report 
apport-bug -w # report window 
apport-collect 123456 # bug hardware software 
apropos . # all help man 
apropos bash # help man 
apropos -e mv # exact help man 
apt-cache depends bash # package dependencies 
apt-cache policy nvidia-current # ppa source 
apt-cache rdepends bash # package reverse dependencies 
apt-cache search bash # package 
apt-cache show bash # package 
apt-cache showpkg bash # package 
apt-cache showsrc bash # package source 
apt-cache stats bash # package statistics 
apt-get source apt 
apt-key --help 
apt-rdepends --dotty apt-rdepends | dot -Tsvg | display 
arch # hardware 
aticonfig --initial=check 
autoconf # compile 
autoreconf --install # compile 
bash -c 'trap "echo baz" INT; kill -INT $$' > test.txt # signal 
bash # shell 
bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer) # install ruby version manager 
bash test.sh # run script 
bash --version 
bash -x # debug 
bc <<<'2+2' # calculator math 
bchunk image.bin image.cue image.iso 
bg # background 
bind -P | grep -F ' can be found on ' | perl -pe 's/((?<!\\)(?:\\\\)*)\\C/\1Ctrl/g;s/((?<!\\)(?:\\\\)*)\\e/\1Esc,/g' # keyboard shortcuts 
~/bin/git diff --check 
~/bin/git diff --minimal 
~/bin/git diff --staged --minimal 
builtin # bash 
bundle help # rails 
bundle init # rails 
bundle install --binstubs=./bundler_stubs # rails 
bundle install # rails 
bundle update # rails 
cap deploy:check # rails 
cap deploy:login 
cap deploy:migrations # rails 
cap deploy # rails 
cap deploy:rollback # rails 
cap deploy:setup # rails 
capify . # rails 
cap # rails 
cat ~/contacts/*.vcf > ~/all.vcf 
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
cd 
cd - 
cd ./ 
cd ../ 
cd -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
cd ~/contacts/ 
cd ~/dev/bm/ # project 
cd ~/dev/business-card/ # project 
cd ~/dev/coffeescript-jedit # project 
cd ~/dev/count/ # project 
cd ~/dev/cronlist/ # project 
cd ~/dev/crumbling-beaker/ # project 
cd ~/dev/csv2zarafa-contacts/ # project 
cd ~/dev/cvsignore2svn/ # project 
cd ~/dev/dialogue/ # project 
cd ~/dev/dialogue.wiki/ # project 
cd ~/dev/difff/ # project 
cd ~/dev/export/ # project 
cd ~/dev/fgit/ # project 
cd ~/dev/filterous/ # project 
cd ~/dev/git/ # project 
cd ~/dev/graphics/ # project 
cd ~/dev/https-everywhere/ # project 
cd ~/dev/indentect/ # project 
cd ~/dev/jail/ # project 
cd ~/dev/lines/ # project 
cd ~/dev/make-links/ # project 
cd ~/dev/mian/ # project 
cd ~/dev/minecraft-scripts/ # project 
cd ~/dev/mkgithub/ # project 
cd ~/dev/mount-image/ # project 
cd ~/dev/msort/ # project 
cd ~/dev/paperless/ # project 
cd ~/dev/paperless.wiki/ # project 
cd ~/dev/qr2scad/ # project 
cd ~/dev/schemaspy2svg/ # project 
cd ~/dev/shunit-ng/ # project 
cd ~/dev/Smooth-CoffeeScript/ # project 
cd ~/dev/subsurface/ # project 
cd ~/dev/tilde/ # project 
cd ~/dev/tilde/scripts/ # project 
cd ~/dev/trim/ # project 
cd ~/dev/txt2cloud/ # project 
cd ~/dev/unrarr/ # project compress 
cd ~/dev/vcard2mutt/ # project 
cd ~/dev/vcard/ # project 
cd ~/dev/worktime/ # project 
cd ~/dev/xterm-color-count/ # project 
cd /home/$USER/ 
cd ~/.minecraft/ # game 
cd -- "$(mktemp -d)" 
cd ~/personal/ 
cd ~/settings/ 
chmod u+x test.sh 
chmod +x $rvm_path/hooks/after_cd_bundler # development plugin ruby version manager 
chromium-browser --proxy-pac-url=http://example.org:8888/proxy.pac 
cmp -b $(which arch) $(which uname) # binary diff 
coffee -v # coffeescript 
comm -23 <(grep -h ^FN: ~/contacts.vcf | sort -u) <(grep -h ^FN: ~/contacts/*.vcf | sort -u) 
comm -23 --nocheck-order <(alias -p) <(bash -lc 'alias -p') 
completions git config '' | grep user # autocomplete 
./configure --help | less # packaging 
./configure # packaging 
count . # filesystem 
cp file{,.orig} # filesystem 
createdb -T template0 -U username dbname # postgresql 
cronlist 
cronlist --help 
cronlist -s 
cronlist -t '23:59:59' 
crontab -e # edit 
crontab -l 
cucumber --dry-run # rails 
cucumber # rails 
cucumber --version # rails 
curl -kL http://xrl.us/perlbrewinstall | bash # development 
curl --version 
cut -d : -f 1 /etc/group | sort 
cvs log 
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
date --rfc-3339=seconds --date="@1000000000" # convert timestamp 
date +%Y-%m-%d 
declare -a # arrays 
declare -F # functions 
declare -f schroedinger # function definition 
declare -p # color variables functions 
declare # variables functions 
~/dev/minecraft-scripts/backup.sh # game 
~/dev/minecraft-scripts/install-Minecraft.sh # game 
~/dev/minecraft-scripts/install-Minecraft-shortcut-GNOME.sh # game 
~/dev/schemaspy2svg/schemaspy2svg.sh ~/db # database 
 ~/dev/tilde/scripts/cleanup.sh -v 
~/dev/tilde/scripts/make-links.sh -v -d meld ~/settings/.* ~ # filesystem symlink 
~/dev/xterm-color-count/xterm-color-count.sh 
~/dev/xterm-color-count/xterm-color-count.sh -v 
df -h . # filesystem 
df -h # filesystem 
diff <(~/bin/git diff --staged) <(~/bin/git diff --staged --minimal) 
difff --help 
diff <(git diff --staged --minimal) <(~/bin/git diff --staged --minimal) 
diff -u file{.orig,} 
diff -u <(hexdump -C /bin/uname) <(hexdump -C /usr/bin/arch) 
diff -u <(printf %s $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' | uniname -bcp) <(bash -c 'trap -- $'\''printf %s --\$\`!*@\		\\\\\\\'\''\\"𠂉\ $\'\''\\n\'\'''\'' INT; traps="$(trap)"; eval "$traps"; kill -INT $$' | uniname -bcp) # test 
diff <(wget -O- http://svn/repo/path?p=1) <(wget -O- http://svn/repo/path?p=2) 
dirname $PWD 
dmesg # debug os startup 
dot -O -Tsvg *.dot # graphics 
dot -Tsvg graph.dot # graphics 
dotty graph.dot # graphics 
dot -V 
dpkg --get-selections | grep -v deinstall | cut -f 1 # installed packages 
dpkg -s bash # package status 
dpkg -S "$(which apt-get)" # package file owner search 
dropdb -U username dbname # postgresql 
echo 0 61 62 63 | xxd -r # hex dump convert string character byte 
echo $BASHPID # shell subshell pid 
echo $COLUMNS # terminal 
echo -e \\0 | sed 's/\x00/nul/' 
echo $? # exit code 
echo 'LC_PAPER="en_GB.UTF-8"' | sudo tee -a /etc/environment # print 
echo $LINES # terminal 
echo -ne '\0' | uniname -bcepu # 1 nul 
echo -ne "\0" | uniname -bcepu # 1 nul 
echo -ne $"\0" | uniname -bcepu # 1 nul 
echo -ne \\0 | uniname -bcepu # 1 nul 
echo -ne \0 | uniname -bcepu # 1 zero 
echo -ne $'\0' | wc -c # 0 
echo $OSTYPE 
echo "$PATH" 
echo "${paths[0]}" # array 
echo "${paths[@]: -1}" # array 
echo "${paths[@]}" # array 
echo $PROMPT_COMMAND # shell 
echo $REPLY # read 
echo $$ # shell pid 
echo $TERM # shell 
echo 'test foo test bar test' | grep -o test | wc -l # count 
echo $WINEPREFIX 
editor ~/.bash_aliases_local # shell 
editor ~/.bash_aliases # shell 
 editor ~/.bash_history # shell 
editor ~/.bashrc_local # shell 
editor ~/.bashrc # shell 
editor ~/.config/lxsession/LXDE/autostart 
editor ~/.config/openbox/lxde-rc.xml # config lxde keyboard shortcuts 
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
editor /lib/udev/rules.d/95-keymap.rules # keyboard 
editor Makefile # dev 
editor ~/.mkgithub # dev 
editor ~/.mozilla/firefox/*/chrome/userContent.css 
editor ~/.muttrc # email 
editor ~/.muttrc_local # email 
editor README.markdown # dev 
editor ~/.rvmrc # config ruby version manager 
editor ~/.ssh/config 
editor ~/.subversion/config # dev 
editor ~/.subversion/servers # dev 
editor ~/.vimrc 
editor ~/.wine/system.reg 
editor ~/.wine/user.reg 
editor ~/.xinitrc 
empty_line_before_eof -i * # newline 
enable -a # builtins 
enable -n # disabled builtins 
env -i bash -c 'printf "%s\n" "${?+?=$?}" "${#+#=$#}" "${*+*=$*}" "${@+@=$@}" "${-+-=$-}" "${!+!=$!}" "${_+_=$_}" "${$+$=$$}"; env' 
env # variable 
eval `resize -s 24 80` # terminal 
eval `ssh-agent` && ssh-add 
eval "$traps" # signal 
exit 
facter # hardware os 
facter --help 
facter id # user 
feh --fullscreen --hide-pointer * # images viewer 
ffmpeg -i %04d.jpg -vcodec libx264 -bf 0 -crf 12 -vpre medium -an -r 25 -s hd1080 timelapse.mp4 # video convert 
ffmpeg -i %04d.jpg -vcodec libx264 -bf 0 -crf 12 -vpre medium -an -r 25 -s hd1080 -vf "transpose=2" timelapse.mp4 # video convert rotate 
fg # foreground 
fgit gc -- ~/*/ ~/.*/ ~/dev/*/ 
fgit --help 
fgit pull -- ~/*/ ~/.*/ ~/dev/*/ /media/*/*/ 
fgit push -- ~/*/ ~/.*/ ~/dev/*/ 
fgit status -- ~/*/ ~/.*/ ~/dev/*/ /media/*/*/ 
fglrxinfo 
file README.markdown 
filterous -dtnb --tag toread --ntag read < ~/personal/bookmarks.xml | less 
find_date_sorted . -mindepth 1 # files 
find_date_sorted . -mindepth 1 | sort -rz | while IFS= read -r -d ''; do stat -- "$REPLY"; done # files loop reverse 
find . -empty 
find . -empty -delete # remove files 
find . -group 1000 -exec chgrp $(id -g) {} \; # update files permissions 
find -L . -type l # broken symlinks 
find . -name '*.marks' -delete # remove jedit temp files 
find . -print0 | while read -r -d ''; do printf %q "$REPLY"; printf '\n'; done 
find . -printf x | wc -c 
find /proc -regex '/proc/[0-9].*' -prune -o -print # not process number 
find . -regex '.*\.\(orig$\|\(BACKUP\|BASE\|LOCAL\|REMOTE\)\..*\)' -delete # remove git rebase temp files 
find . -type f -name file | exclude_vcs 
find -version 
firefox -profilemanager 
firefox -safe-mode 
for path in *.jpg; do mv -v "$path" "$(printf "%04d" $index).jpg"; let index+=1; done; unset index 
for path in ~/.minecraft/saves/*; do overviewer.py --rendermodes=smooth-lighting,smooth-night,spawn "$path" "$path"/map; done 
for path in *.sass; do sass-convert $path ${path%.*}.scss; done 
fortune 
for vcard in *.vcf; do msort -b 'BEGIN:VCARD.*?END:VCARD\r\n\r\n' -s '^N:(.*)$' < "$vcard" > "$vcard"2; mv "$vcard"2 "$vcard"; done 
fromdos -- file # convert newline 
gcc --version 
gconf-editor # gnome config 
gem help rdoc # ruby 
gem install bundler 
gem install cucumber 
gem install pry pry-doc 
gem install rails 
gem install sqlite3 
gem list --help 
gem list --local 
gem rdoc --all 
gem server 
git 
git add . 
git add .gitignore 
git add --interactive 
git add LICENSE 
git add Makefile 
git add -p 
git add README.markdown 
git add tools.mk 
git blame filename 
git branch 
git branch -r # remote 
git branch --set-upstream master origin/master # track 
git branch topic 
git checkout . 
git checkout -b topic-svn remotes/topic # branch svn 
git checkout master 
git cherry-pick master:HEAD 
git clean -nd # dry-run directories 
git clean -ndx # dry-run directories 
git clone git@github.com:l0b0/mkgithub.git 
git clone git://libdivecomputer.git.sourceforge.net/gitroot/libdivecomputer/libdivecomputer 
git clone git://repo.or.cz/cronlist.git 
git clone https://github.com/terreActive/redmine.git 
git commit 
git commit -am "Example" 
git config diff.minimal 
git config diff.minimal false 
git config diff.minimal invalid 
git config diff.minimal true 
git config --global github.user l0b0 
git config --global mergetool.prompt false 
git config -l 
GIT_CURL_VERBOSE=1 git pull # debug 
git diff 
git diff --color-words 
git diff HEAD^ -- README.markdown 
git diff --ignore-all-space 
git diff --ignore-space-change 
git diff master origin/master 
git diff --raw 
git diff --staged 
git diff --staged --ignore-space-at-eol 
git diff --staged --stat 
git diff -w --no-color | git apply --cached 
git diff --word-diff 
git fetch 
git format-patch -M HEAD^ 
git grep -I --name-only -z -e '' | xargs -0 sed -i -e 's/[ \t]\+\(\r\?\)$/\1/;$a\' -- # whitespace eol eof 
git gui& 
git help add 
git help blame 
git help branch 
git help cherry-pick 
git help clean 
git help clone 
git help config 
git help diff 
git help fetch 
git help format-patch 
git help grep 
git help init 
git help log 
git help merge 
git help pull 
git help push 
git help rebase 
git help remote 
git help stash 
git help submodule 
git help svn 
git help tag 
git init 
gitk --all .& # gui 
git log 
git log Makefile 
git log --oneline --decorate 
git log --patch-with-stat 
git log --stat 
git merge origin/master 
git mergetool 
git mv README{,.markdown} 
git pull 
git pull origin master 
git push 
git push --force 
git push --tags 
git push -u origin master 
git rebase --abort 
git rebase --continue 
git rebase --interactive HEAD~20 
git rebase master 
git remote add -f origin ssh://user@example.org/home/user/repo 
git remote -v show 
git reset HEAD^ 
git reset --soft HEAD~1 # commit undo 
git stash drop # delete 
git stash && git merge origin/master && git stash pop 
git stash && git pull && git stash pop 
git stash && git rebase --interactive HEAD~20 
git stash list 
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
git status 
git svn clone -s -r 1:HEAD http://svn/repo 
git svn clone -s -r 1:HEAD --no-minimize-url http://svn/repo/path 
git svn dcommit 
git svn dcommit --dry-run 
git svn fetch 
git svn help 
git svn rebase 
git svn show-ignore >> .git/info/exclude 
git svn status 
git tag --delete name 
git --version 
glc-capture -o recording.glc minecraft 
glc-play recording.glc 
glc-play recording.glc -a 1 -o recording.wav # audio 
glc-play recording.glc -y 1 -o - | mencoder -demuxer y4m - -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=3000 -audiofile recording.wav -oac mp3lame -o recording.avi # video encoding mp4 mpeg4 
glxinfo 
gnome-control-center sound 
gnome-screensaver & 
gnome-screensaver-command --exit 
gnome-screensaver-command --lock 
gnome-screensaver-command --version 
gnome-screensaver --version 
gnome-shell --version 
gpg --allow-secret-key-import --import ~/secring.gpg 
gpg --import ~/pubring.gpg 
grep -lZ "pattern" * 2>/dev/null | tr -cd '\000' | wc -c # count occurrences pattern 
grep $USER /etc/group 
grep $USER /etc/passwd # password 
grep --version 
groups 
groups nobody 
groups $USER 
guard 
guard -g functional:controller # test 
guard -g unit:decorator 
guard -g unit:model 
guard help 
guard list 
guard show 
gunzip example.gz 
gzip example.txt # compress 
help alias 
help builtin 
help command 
help declare 
help echo 
help enable 
help help 
help history 
help kill 
help local 
help printf 
help read 
help set 
help shopt 
help test 
help trap # signal 
help type 
help typeset 
help ulimit 
help umask 
help wait 
host example.org  # internet network 
hostname  # internet network 
hostname -s  # internet network 
hp-setup # printer 
hp-wificonfig # printer 
iconv --from-code=utf-8 --to-code=iso-8859-1 utf8.txt > latin1.txt # convert encoding 
id --group 
id # group user 
id --user 
id $USER 
ifconfig -a eth0 # internet network nic 
ifconfig -a # internet network 
ifconfig # internet network 
IFS=':' read -a paths <<< "$PATH" # tokenize array 
if [[ "$(type rvm | head -1)" != 'rvm is a function' ]]; then echo "Installation failed"; fi # install ruby version manager 
imapfilter # email 
indentect --help 
indentect -v < "$(which indentect)" 
indentect < "$(which indentect)" 
info find # help 
info sed 
iostat 
iotop 
iotop -bn 1 
ip link show 
ip link show up 
ip route 
ipython 
jail 
jail -d /var/jail/ 
jail -d /var/jail/ -u $USER 
jail -u $USER 
java -jar ~/schemaSpy.jar -dp /usr/share/java/mysql.jar -hq -t mysql -host localhost:3306 -db database -u user -p password -o ~/db 
java -jar ~/schemaSpy.jar -dp /usr/share/java/postgresql.jar -hq -t pgsql -host localhost:5432 -db database -s public -u user -p password -o ~/db 
java -Xmx1024M -Xms512M -cp ~/.minecraft/minecraft.jar net.minecraft.LauncherFrame 
jhead -da2010:11:12/13:14:15-2005:01:01 *.jpg # adjust date time image 
kill -0 $! # check process pid 
killall awesome 
killall firefox 
killall gdm 
killall keepassx 
killall lxpanel # lxde 
killall npviewer.bin 
killall plugin-container 
kill -INT $$ # signal 
kill -l # list signals 
komodo & 
l 
l ~ 
la 
la ~ 
lastlog # login users 
ldconfig 
ldd $(which bash) 
less /etc/issue 
less /etc/passwd # password 
less Makefile 
less /proc/bus/input/devices 
less -R filename # color 
less /sys/class/dmi/id/product_name 
less /sys/class/dmi/id/sys_vendor 
less /var/log/auth.log 
less /var/log/dmesg 
less /var/log/kern.log 
less /var/log/messages 
less /var/log/syslog 
less /var/log/Xorg.0.log 
/lib/udev/findkeyboards 
ll 
locale 
locale -a 
locate file 
longest < ~/.bash_history 
lpstat -v 
ls 
ls -1 
ls -d /proc/[^0-9]* 
lshw 
ls -la 
ls -lr 
ls -lt 
ls -lt /var/log/ 
lsmod # kernel modules 
lsof +c 0 | grep gnome-terminal | wc -l  # count files 
lsof # files 
lspci | grep -i audio 
lsusb | grep -i cam 
lxkeymap # keyboard layout 
lxpanel & # lxde 
lyx file.lyx 
m4 --version # compile dev 
make 2>&1 | tee > make_compile.out~ # compile dev 
make clean # dev 
make # compile dev 
make configure # dev 
make explain 2>&1 | grep MAKE # dev 
make explain-MAKE # dev 
make install # dev 
make release # dev 
make test 2>&1 | tee > make_test.out~ # dev 
make test # dev 
make variables # dev 
man 1p mv # posix help 
man 5 crontab # help 
man 5 passwd # help password 
man ack-grep # help 
man add-apt-repository # help 
man addgroup # help 
man adduser # help 
man apropos # help 
man apt-cache # help 
man apt-get # help 
man apt-key # help 
man apt-listchanges # help 
man apt-rdepends 
man arch # help 
man ascii # help 
man bash # help 
man bc # help 
man blkid # help 
man cal # help 
man charsets # help 
man chgrp # help 
man chmod # help 
man chown # help 
man chroot # help 
man cmp # help 
man comm # help 
man cp # help 
man createdb # help postgresql 
man createuser # help postgresql 
man crontab # help 
man curl # help 
man cut # help 
man date # help 
man diff # help 
man dot # help 
man dotty # help 
man dpkg # help 
man env # help 
man errno # help 
man expr # help 
man extundelete # help 
man fdisk # help 
man feh # help 
man ffmpeg # help 
man file # help 
man fmt # help 
man fortune # help 
man getopt # help 
man git # help 
man gitk # help 
man git-svn # help 
man gksu # help 
man gnome-screensaver-command # help 
man gnome-screensaver # help 
man gnome-shell # help 
man gnome-terminal # help 
man gpg # help 
man grep # help 
man groupadd # help 
man groups # help 
man head # help 
man <(help2man help2man) # help 
man hier # help 
man hostname # help 
man hosts # help 
man id # help 
man inotify # help 
man inotifywait # help 
man install # help 
man interfaces # help 
man iostat # help 
man iotop # help 
man ip # help 
man jhead # help 
man join # help 
man kill # help 
man ldd # help 
man ld # help 
man less # help 
man line # help 
man ln # help 
man locate # help 
man logger # help 
man ls # help 
man lsof # help 
man lynx # help 
man man # help 
man markdown # help 
man mktemp # help 
man mount # help 
man mp3fs # help 
man mutt # help 
man mv # help 
man nautilus # help 
man ncal # help 
man netstat # help 
man nl # help 
man node # help 
man od # help 
man paperconfig # help 
man passwd # help 
man patch # help 
man perl # help 
man perlrun # help 
man pgrep # help 
man ping # help 
man pngcrush # help 
man pod2man # help 
man proc # help 
man psql # help postgresql 
man puppet # help 
man rake # help 
man rar # help compress 
man rdesktop # help 
man recordmydesktop # help 
man rename # help 
man resize # help 
man rm # help 
man route # help 
man scp # help 
man script # help 
man sed # help 
man seq # help 
man setxkbmap # help 
man sha1sum # help 
man sh # help 
man showkey # help 
man shuf # help 
man shunit2 # help 
man signal # help 
man sleep # help 
man sort # help 
man ssh-agent # help 
man ssh_config # help 
man ssh-copy-id # help 
man sshd # help 
man ssh # help 
man stat # help 
man strace # help 
man strfile # help 
man sudo # help 
man su # help 
man tail # help 
man tar # help 
man tee # help 
man time # help 
man timeout # help 
man tkmib # help 
man tofrodos # help 
man touch # help 
man tput # help 
man traceroute # help 
man trash # help 
man tr # help 
man udevadm # help 
man umask # help 
man uname # help 
man unicode # help 
man uniname # help 
man uniq # help 
man update-alternatives # help 
man updatedb # help 
man useradd # help 
man usermod # help 
man utf8 # help 
man vim # help 
man watch # help 
man wc # help 
man wdiff # help 
man wget # help 
man whatis # help 
man w # help 
man who # help 
man whois # help 
man xargs # help 
man xclip # help 
man xdg-desktop-menu # help 
man xdotool # help 
man xinput # help 
man xscreensaver-command # help 
man xwininfo # help 
man xxd # help 
markdown_page README.markdown > README.xhtml 
markdown_page "${TODOS[@]}" > ~/todo.xhtml 
markdown README.markdown 
markdown README.markdown | lynx -stdin 
markdown README.markdown > README.html 
meld .& # diff 
meld old new& # diff 
meld <(ssh example.org cat /etc/hosts) <(ssh example2.org cat /etc/hosts) # diff 
meld <(wget -O- http://git.gnome.org/browse/meld/plain/.gitignore?id=250066249e06241e3bfd3863c1a233fb45f40a12) <(wget -O- http://git.gnome.org/browse/meld/plain/.gitignore) # diff 
meld <(wget -O- http://svn/repo/path?p=1) <(wget -O- http://svn/repo/path?p=2) # diff 
mencoder -fps 10 -nosound -ovc copy timelapse.mp4 -o timelapse-slow.mp4 # video 
mian ~/.minecraft/saves/New\ World 
minecraft & 
mkdir -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
mkdir mp3 
mkdir test 
mkgithub -chvu l0b0 
mkgithub -csvu l0b0 
mkgithub ~/dev/bm 
mkgithub ~/dev/bookmarklets 
mkgithub ~/dev/bookmarklets-janmoesen 
mkgithub ~/dev/business-card 
mkgithub ~/dev/CERN-Central-Library-bookmark 
mkgithub ~/dev/coffeescript-jedit 
mkgithub ~/dev/coin-sorter 
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
mkgithub ~/dev/export 
mkgithub ~/dev/fgit 
mkgithub ~/dev/filterous 
mkgithub ~/dev/generate-password 
mkgithub ~/dev/git 
mkgithub ~/dev/graphics 
mkgithub ~/dev/highlight 
mkgithub ~/dev/https-everywhere 
mkgithub ~/dev/Hypervolume 
mkgithub ~/dev/img2scad 
mkgithub ~/dev/img2vcard 
mkgithub ~/dev/indentect 
mkgithub ~/dev/jail 
mkgithub ~/dev/job-board 
mkgithub ~/dev/lines 
mkgithub ~/dev/lwpb 
mkgithub ~/dev/make-links 
mkgithub ~/dev/metal-book 
mkgithub ~/dev/mian 
mkgithub ~/dev/minecraft-scripts 
mkgithub ~/dev/mkgithub 
mkgithub ~/dev/mount-image 
mkgithub ~/dev/msort 
mkgithub ~/dev/offlickr 
mkgithub ~/dev/OpenSCAD-Minimizer 
mkgithub ~/dev/paperless 
mkgithub ~/dev/paperless.wiki 
mkgithub ~/dev/parametric-box 
mkgithub ~/dev/progit 
mkgithub ~/dev/Project-Euler 
mkgithub ~/dev/qr2scad 
mkgithub ~/dev/RAYT 
mkgithub ~/dev/rvm # ruby version manager 
mkgithub ~/dev/schemaspy2svg 
mkgithub ~/dev/screensaver-info 
mkgithub ~/dev/see-colon 
mkgithub ~/dev/shunit-ng 
mkgithub ~/dev/SICP 
mkgithub ~/dev/Smooth-CoffeeScript 
mkgithub ~/dev/spark 
mkgithub ~/dev/Standardy 
mkgithub ~/dev/subsurface 
mkgithub ~/dev/tilde 
mkgithub ~/dev/trim 
mkgithub ~/dev/txt2cloud 
mkgithub ~/dev/unflickr 
mkgithub ~/dev/unrarr # compress 
mkgithub ~/dev/vcard 
mkgithub ~/dev/vcard2mutt 
mkgithub ~/dev/worktime 
mkgithub ~/dev/xbug 
mkgithub ~/dev/xFormsCal 
mkgithub ~/dev/xterm-color-count 
mkgithub -h 
mkgithub --help 
mogrify -crop 2316x1303+0+0 *.jpg 
mogrify -format jpg *.CR2 
mount 
mount-image *.iso 
mount -n -o remount,defaults /dev/sda1 / 
mountpoint /home 
mp3fs -b 256 music mp3 
mutt 
mutt -d 5 
mutt -H 0001-Add-diff.minimal-configuration-setting.patch 
mutt -v 
mutt -vv 
mv file{.orig,} 
ncal -3bM 
neato -O -Tsvg *.dot 
netstat 
netstat -a # internet connections sockets 
nl ~/.bashrc 
nmap -T Aggressive -A -v 192.168.0.1 
nmap -v -sP 192.168.0.0/24 
node # javascript 
node -v 
npm config set registry http://registry.npmjs.org/ 
npm install -g coffee-script # coffeescript 
npm ls -g 
npm -v 
openscad ~/dev/crumbling-beaker/beaker.scad & 
passwd # password user 
patch -p0 < patch.diff 
PATH=$(IFS=':'; echo "${paths[*]}") 
perlbrew switch 
perl_modules 
perl_module_version URI 
perl --version 
pgrep -u root cron 
php -a 
php --version 
pid=$! # process pid 
ping -c 4 example.org 
ping example.org 
pip help 
pngcrush -brute -d /target *.png 
PREFIX=~ sudo make install 
printf "$IFS" | od -t x1 # string character byte convert hex dump posix 
printf "$IFS" | xxd -g1 # string character byte convert hex dump 
printf %q $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
printf %q "$IFS" 
printf %s $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' > $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test unicode 
printf %s $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' | uniname -bcp # test unicode 
printf %s $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' | xclip; cmp -l <(printf %s $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n') <(xclip -o) # clipboard test 
printf %s "${IFS:0:1}" 
prove 
prove -r 
pry 
psql dbname username < dump.sql # postgresql 
psql -U db_user db_name # postgresql 
psql --version # postgresql 
ps wafux 
pulseaudio --kill && pulseaudio --start 
puppet describe -s user 
puppet resource --help 
puppet resource --types 
puppet resource user 
puppet resource user root 
pwd # current directory 
qgit --all .& # gui 
rails c # console 
rails d controller sessions # delete database 
rails d scaffold user # delete database 
rails g controller sessions new create destroy # create database 
rails g --help # generators 
rails g migration add_email_to_user email:string email_plain_text_only:boolean # create database 
rails g scaffold user name:string full_name:string hashed_password:string salt:string description:text password_expiration:datetime birthday:date visits:integer photo:binary enabled:boolean distance:float weight:decimal update_stats:time last_checkout:timestamp # create database 
rails g spine:scaffold user name # create javascript 
rails new project_name # create 
rails s -e production -p 3002 # start service web 
rails s -e test -p 3001 # start service web 
rails s # start service web 
rails --version 
rake assets:clean 
rake db:migrate --trace # rails database 
rake db:reset --trace # rails database 
rake db:reset --trace && rails s # database 
rake db:rollback --trace # rails database 
rake db:seed --trace # rails database 
rake db:test:prepare --trace # rails database 
rake routes # rails web 
rake spec # rails test 
rake --tasks # rails 
rake test # rails 
rdesktop -r clipboard:CLIPBOARD -k de-ch -g 1024x768 hostname # remote keyboard windows 
read < "/path" 
read -r var 
read <<< "$text" 
recordmydesktop --windowid $(xdotool selectwindow) --no-cursor --full-shots --fps 25 --no-wm-check --no-frame -o ~/out.ogv 
rename -n 's/([^-]+)-.*-([^-]+)/$1-$2/' *.xml | grep -o ' renamed as .*' | sort | uniq -d # safe 
rename -nv 's/.*/sprintf "%04d.jpg", ++$main::Mad/e' *.jpg # video 
reset # clear log remove terminal text 
rm -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
rmdir * 
rmdir -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
rm file 
rm -- ~/pubring.gpg ~/secring.gpg 
route 
ruby -v 
rvm gemset empty project_name # gems delete uninstall 
rvm get stable # install ruby version manager 
rvm help do 
rvm help install 
rvm help use 
rvm info 
rvm install 1.9.2 
rvm install 1.9.3-p0 
rvm list 
rvm list known 
rvm notes 
rvm requirements 
rvm # ruby version manager 
rvm --rvmrc --create use ruby-version@project_name 
rvm usage 
rvm use 1.9.3-p0 
rvm use system 
rvm use system --default 
rvm version 
sandbox="$(mktemp -d)" 
sass-convert all.s{a,c}ss 
schemaspy2svg ~/db 
schemaspy2svg --help 
scp example.org:/home/jdoe/example.txt . 
scp -P 2222 example.org:/home/jdoe/example.txt . 
scp -r file example.org:~ 
sed -e '9d' file # delete line 
sed -e '/^$/d' file 
sed -e '/^[[:space:]]*$/d' file 
 sed -i -e 's/ *$/ /g' ~/dev/tilde/.bash_history 
set +o noclobber 
set -o nounset 
set +o nounset 
set -o pipefail 
set +o pipefail 
(set -o posix; set) 
(set -o posix; set) | grep -o ^COMP[^=]* 
./setup.py test 
set -x 
set +x 
setxkbmap -option compose:caps # keyboard 
setxkbmap -print # keyboard settings 
setxkbmap -v | awk -F "+" '/symbols/ {print $2}' # keyboard layout settings 
sh 
sha1sum --check sha1sums.txt # verify 
sha1sum file 
shopt nullglob # option get 
shopt # options 
shopt -s dotglob # option set .* 
shopt -s extglob # option set ?(a|b) *(a|b) +(a|b) @(a|b) !(a|b) 
shopt -s globstar # option set ** 
shopt -s nullglob # option set * 
shopt -u nullglob # option unset * 
shortest < ~/.bash_history 
showkey -a # ascii keyboard scancode 
sleep 1m 
sloccount . 
 sort -u -o ~/dev/tilde/.bash_history ~/dev/tilde/.bash_history 
source ~/.bash_aliases 
source ~/.bash_aliases_local 
source ~/.bashrc 
sqlite3 -line db/development.sqlite3 "select * from table_name" 
ssh-copy-id example.org 
ssh example.org 
ssh example.org < test.sh 
ssh example.org uptime 
ssh -p 2222 example.org 
ssh -R 9000:localhost:9000 example.org 
ssh -vvv example.org 
ssh -Y example.org 
strace -p 123 # process 
strings /usr/bin/strings 
sudo add-apt-repository ppa:chrysn/openscad 
sudo add-apt-repository ppa:ubuntu-x-swat/x-updates 
sudo addgroup $USER group 
sudo amdcccle # catalyst video 
sudo apt-get dist-upgrade 
sudo apt-get install ack-grep 
sudo apt-get install apt-listchanges 
sudo apt-get install apt-rdepends 
sudo apt-get install autoconf 
sudo apt-get install automake 
sudo apt-get install bash 
sudo apt-get install binutils 
sudo apt-get install bison 
sudo apt-get install bison-doc 
sudo apt-get install build-essential 
sudo apt-get install chromium-browser 
sudo apt-get install clisp 
sudo apt-get install clisp-dev 
sudo apt-get install clisp-doc 
sudo apt-get install cloc sloccount 
sudo apt-get install colordiff 
sudo apt-get install curl 
sudo apt-get install cvs 
sudo apt-get install default-jre 
sudo apt-get install deluge 
sudo apt-get install dfo 
sudo apt-get install enigmail 
sudo apt-get install enscript 
sudo apt-get install esmtp 
sudo apt-get install extundelete 
sudo apt-get install fakeroot 
sudo apt-get install feh 
sudo apt-get install ffmpeg 
sudo apt-get install fortune-mod 
sudo apt-get install gcc 
sudo apt-get install gedit gedit-developer-plugins 
sudo apt-get install git-core git-doc git-gui gitk git-svn qgit 
sudo apt-get install graphviz 
sudo apt-get install graphviz-doc 
sudo apt-get install gtk-recordmydesktop 
sudo apt-get install help2man 
sudo apt-get install hplip-gui # printer 
sudo apt-get install hugin 
sudo apt-get install hunspell 
sudo apt-get install hunspell-de-ch 
sudo apt-get install hunspell-de-de 
sudo apt-get install hunspell-en-us 
sudo apt-get install hunspell-fr 
sudo apt-get install ia32-libs 
sudo apt-get install imagemagick 
sudo apt-get install imagemagick-doc 
sudo apt-get install imapfilter 
sudo apt-get install inkscape 
sudo apt-get install inotify-tools 
sudo apt-get install install 
sudo apt-get install iotop 
sudo apt-get install ipython 
sudo apt-get install jedit 
sudo apt-get install jhead 
sudo apt-get install kernel-package 
sudo apt-get install lastfm 
sudo apt-get install libc6-dev 
sudo apt-get install libgconf2-dev 
sudo apt-get install libglade2-dev 
sudo apt-get install libmysql-java 
sudo apt-get install libncurses5-dev 
sudo apt-get install libpg-java 
sudo apt-get install libreadline6 
sudo apt-get install libreadline6-dev 
sudo apt-get install libsqlite3-dev 
sudo apt-get install libssl-dev 
sudo apt-get install libtiff-tools 
sudo apt-get install libtool 
sudo apt-get install libva-glx1 vainfo xvba-va-driver && vainfo # video acceleration h.264 
sudo apt-get install libxml2-dev 
sudo apt-get install libxml-simple-perl 
sudo apt-get install libxslt1-dev 
sudo apt-get install libxslt-dev 
sudo apt-get install libyaml-dev 
sudo apt-get install linux-doc 
sudo apt-get install linux-headers-generic 
sudo apt-get install linux-image-generic 
sudo apt-get install linux-source 
sudo apt-get install lynx-cur 
sudo apt-get install lyx 
sudo apt-get install manpages-posix-dev # help posix 
sudo apt-get install markdown 
sudo apt-get install meld 
sudo apt-get install mencoder 
sudo apt-get install minicom 
sudo apt-get install mit-scheme 
sudo apt-get install mp3fs 
sudo apt-get install ncurses-dev 
sudo apt-get install nethack-qt 
sudo apt-get install nfs-common 
sudo apt-get install ntp 
sudo apt-get install ntp-doc 
sudo apt-get install nvidia-current 
sudo apt-get install offlineimap 
sudo apt-get install openscad 
sudo apt-get install openssh-server 
sudo apt-get install openssl 
sudo apt-get install pdftk 
sudo apt-get install pep8 pychecker pyflakes pylint 
sudo apt-get install pgadmin3 
sudo apt-get install php5-cli 
sudo apt-get install php5-dev php-pear 
sudo apt-get install pidgin 
sudo apt-get install playonlinux 
sudo apt-get install pngcrush 
sudo apt-get install puppetmaster 
sudo apt-get install python-dev 
sudo apt-get install python-doc 
sudo apt-get install python-lxml 
sudo apt-get install python-matplotlib 
sudo apt-get install python-pip 
sudo apt-get install python-profiler 
sudo apt-get install python-pydot 
sudo apt-get install python-setuptools 
sudo apt-get install rar # compress 
sudo apt-get install rdesktop 
sudo apt-get install --reinstall package 
sudo apt-get install rsync 
sudo apt-get install ruby-dev 
sudo apt-get install sbcl 
sudo apt-get install screen 
sudo apt-get install shunit2 # test bash shell 
sudo apt-get install sqlite3 
sudo apt-get install sqlite3-doc 
sudo apt-get install strfile 
sudo apt-get install subversion 
sudo apt-get install sun-java6-fonts 
sudo apt-get install sun-java6-jre 
sudo apt-get install sysv-rc-conf 
sudo apt-get install tkmib 
sudo apt-get install tofrodos 
sudo apt-get install ttf-bitstream-vera ttf-dejavu ttf-lyx ttf-xfree86-nonfree 
sudo apt-get install ubuntu-restricted-extras 
sudo apt-get install uniutils 
sudo apt-get install unrar-free # compress 
sudo apt-get install urlview muttprint 
sudo apt-get install vim 
sudo apt-get install vim-puppet 
sudo apt-get install vim-rails 
sudo apt-get install vlc vlc-plugin-pulse mozilla-plugin-vlc # video audio 
sudo apt-get install wget 
sudo apt-get install wine 
sudo apt-get install winetricks 
sudo apt-get install x264 
sudo apt-get install xclip 
sudo apt-get install xdotool 
sudo apt-get install xournal 
sudo apt-get install xscreensaver 
sudo apt-get install zlib1g-dev 
sudo apt-get purge bash 
sudo apt-get purge overlay-scrollbar 
sudo apt-get update 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E6A233DBE3AFBEFC # jedit 
sudo blkid -o list 
sudo chown nobody "$sandbox" 
sudo chown -R "$USER":"$USER" ~/.matplotlib 
sudo chown -R "$USER":"$USER" RECOVERED_FILES 
sudo cp /sys/class/hwmon/hwmon0/device/fan1_max /sys/class/hwmon/hwmon0/device/fan1_output # hardware macmini4,1 speed 
sudo crontab -e # edit 
sudo ~/dev/tilde/scripts/install-all.sh 
sudo dmidecode 
sudo dmidecode --type 1 
sudo dmidecode --type system 
sudo do-release-upgrade # Ubuntu distro 
sudo dpkg-reconfigure ca-certificates 
sudo editor /etc/apt/sources.list 
sudo editor /etc/default/keyboard 
sudo editor /etc/fstab 
sudo editor /etc/hosts 
sudo editor /etc/postgresql/*/main/pg_hba.conf 
sudo editor /etc/X11/xorg.conf 
sudo /etc/init.d/postgresql reload 
sudo extundelete --restore-directory /dir/ /dev/sda1 
sudo fdisk -l 
sudo iotop 
sudo java -jar jdivelog-installer-2.16.jar 
sudo lshw | less 
sudo make distclean 2>&1 | tee make_distclean.out~ 
sudo make docinstall 2>&1 | tee make_docinstall.out~ 
sudo make install 
sudo make install 2>&1 | tee make_install.out~ 
sudo make pkginstall 2>&1 | tee make_pkginstall.out~ 
sudo make topclean 2>&1 | tee make_topclean.out~ 
sudo make uninstall 
sudo mount -a 
sudo mount -o remount,ro /dev/sda1 # readonly restore 
sudo mount -o remount,rw /dev/sda1 # writeable 
sudo nvidia-settings 
sudo paperconfig -p a4 
sudo pip install --upgrade vcard 
sudo pip uninstall vcard 
sudo reboot 
sudo rm -rf ~/build ~/src 
sudo sed -i.bak -e 's/^\(\s*\)\(native_origins = \[this_os\]\)/\1\2\n\1native_origins.append("Ubuntu")/' /usr/share/pyshared/apport/packaging_impl.py 
sudo service cups restart 
sudo service postgresql reload 
sudo shutdown -r now 
sudo tee /sys/class/hwmon/hwmon0/device/fan1_output <<<5500 # hardware macmini4,1 speed 
sudo umount mp3 
sudo update-alternatives --set editor "$(which vim.basic)" 
sudo update-alternatives --set x-www-browser "$(which firefox)" 
sudo updatedb 
sudo update-grub 
sudo update-java-alternatives --jre -s java-6-sun 
sudo -u postgres createuser -s username 
sudo usermod -g group $USER # change default group 
sudo usermod -G "$(id -nG | sed -e 's/ \?group \?/ /g;s/ /,/g;s/^,//;s/,$//')" $USER # remove group 
sudo visudo 
sudo Xorg :1 -configure 
sum <<< '2 2' 
svn add . 
svn blame -x -w Makefile 
svn cat -r 1 Makefile | less 
svn ci -m "Test" 
svn ci --non-recursive doc 
svn co http://svn/repo ~/dir 
svn cp http://svn/repo/trunk http://svn/repo/branches/branch-name 
svn diff 
svn diff -c 1 
svn diff -c 1 -x -w 
svn diff --diff-cmd diff > patch.diff 
svn diff | less 
svn diff -r 1:HEAD 
svn diff -r PREV 
svn diff -u 
svn diff -x -b 
svn diff -x -u 
svn diff -x -u > patch.diff 
svn diff -x -w 
svn diff -x -w --ignore-eol-style 
svn help 
svn help ci 
svn help co 
svn help diff 
svn help log 
svn help merge 
svn info 
svn list http://svn/repo 
svn log | less 
svn log -r 1 
svn log --stop-on-copy | less 
svn log --verbose | less 
svn merge http://svn/repo/branches/name 
svn merge -r 99:HEAD http://svn/repo/branches/name 
svn merge -r HEAD:99 . # reverse 
svn propdel svn:ignore . 
svn propedit svn:ignore . 
svn propset svn:executable 1 test.sh 
svn propset svn:keywords 'Id HeadURL' test.sh 
svn revert Makefile 
svn revert --recursive . 
svn rm --force file 
svn rm --keep-local file 
svn st 
svn up 
TAGS=all guard 
TAGS=$USER guard 
tail -F /var/log/messages 
./test.sh 
./test.sh "first argument" "second argument 
./test.sh "first argument" "second argument" 
thunderbird -profilemanager 
time make test 
timeout 1 sleep 2 
tkmib & 
todos -- file # convert newline 
top 
touch -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
touch -d '1970-01-01 00:00:00 UTC' test && find . -maxdepth 1 -name test -printf '%T@ %p\n' 
tput colors 
traceroute example.org 
trap -- $'printf %s --\$\`!*@\		\\\\\\\'\\"𠂉\ $\'\\n\'' INT # signal 
trap # signal 
traps="$(trap)" # signal 
txt2cloud 
txt2cloud -m3 < $(which txt2cloud) > cloud.xhtml 
type -a true 
udevadm info --export-db 
ulimit -a 
ulimit -c unlimited 
umask 
umount-image *.iso 
uname -a 
uname -m 
unetbootin 
unset -a array 
unset -f function 
unset REPLY 
unset var 
upgrade 
uptime 
/usr/local/JDiveLog/bin/jdivelog 
vainfo 
vcard ~/contacts/*.vcf 
vim -c "setfiletype sh" test 
visudo 
vlc -H 
vlc --spdif --ffmpeg-hw --verbose 2 file.1080p.x264.mkv # video h.264 
vlc --spdif --fullscreen --deinterlace -1 --deinterlace-mode yadif2x --video-filter postproc --postproc-q 6 --audio-language ja --sub-language en --verbose 2 --advanced dvdsimple:///dev/dvd & 
vlc --spdif http://www.lynnepublishing.com/surround/www_lynnemusic_com_surround_test.ac3 # audio 
vmware 
w 
wait # process pid 
watch 'svn diff' 
whatis mv # exact help man 
which make 
while IFS= read -r -d '' -u 9; do echo "$REPLY"; done 9< <(find /tmp/ -mindepth 1 -print0 | shuf -n 10 -z) # random shuffle files 
while IFS= read -r -d '' -u 9; do if [[ "$(file -bs --mime-type -- "$REPLY")" = text/* ]]; then sed -i -e 's/[ \t]\+\(\r\?\)$/\1/;$a\' -- "$REPLY"; else echo "Skipping $REPLY" >&2; fi; done 9< <(find . \( -type d -regex '^.*/\.\(git\|svn\)$' -prune -false \) -o -type f -print0) # whitespace eol eof 
while IFS= read -r -u 9; do if [[ "$REPLY" =~ .*\.dot$ ]]; then dot -O -Tsvg "$REPLY"; fi; done 9< <(inotifywait -e close_write --format %f -m .) 
while IFS= read -r -u 9; do if [[ "$REPLY" =~ .*\.markdown$ ]]; then markdown_page "$REPLY" > "${REPLY%.markdown}.xhtml"; fi; done 9< <(inotifywait -e close_write --format %f -m .) 
while IFS= read -r -u 9; do if [[ "$REPLY" =~ .*_test\.rb$ ]]; then rake test; fi; done 9< <(inotifywait -e close_write --format %f -m test/*) 
while read; do xdotool windowactivate $REPLY; xdotool key F5; done < <(xdotool search --name "Mozilla Firefox") # refresh 
while true; do DISPLAY=:0 compiz --replace; done & # debug wm 
while true; do DISPLAY=:0 gnome-shell --replace; done & # debug wm 
whois example.org # dns lookup 
who # logins users 
wine --version 
worktime --end=$(date --date=Thursday +%Y-%m-%d) > ~/week.xhtml 
xev 
xinput --list 
xinput --list 10 
xinput --list-props 10 
xkill 
xmodmap -pp >~/xmodmap 
xscreensaver-command -lock 
xscreensaver-command -version 
xterm -version 
xwininfo -id $(xdotool selectwindow) 
xxd $(which xxd) | head -1 
