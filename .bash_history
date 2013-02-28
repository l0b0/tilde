ack-grep --all --ignore-dir .jhw-cache --ignore-dir .sass-cache --ignore-dir log --ignore-dir public --ignore-dir tmp "pattern" . # search rails 
ack-grep "pattern" . # search 
add-apt-repository --help 
alias ls 
align_image_stack -vl -a aligned *.jpg 
aplay --list-pcms # audio 
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
ash -o noexec ~/dev/makeThin/makeThin.ash # verify syntax 
aticonfig --initial=check 
autoconf # compile 
autoreconf --install # compile 
avconv -i %04d.jpg -vcodec libx264 -bf 0 -crf 12 -an -r 25 -s hd1080 timelapse2.mp4 # video convert 
avconv -i input.mov -codec copy -ss 15 output.mov # cut 
bash -c 'trap "echo baz" INT; kill -INT $$' > test.txt # signal 
bashdb test.sh # debug script 
bash --noprofile --norc -x # test trace 
bash -o noexec ~/.bash_history # verify syntax 
bash -o xtrace # debug 
bash test.sh # run script 
bash --version 
bc <<< '2+2' # calculator math 
bchunk image.bin image.cue image.iso 
bg # background 
bind -P | grep --fixed-strings ' can be found on ' | perl -pe 's/((?<!\\)(?:\\\\)*)\\C/\1Ctrl/g;s/((?<!\\)(?:\\\\)*)\\e/\1Esc,/g' # keyboard shortcuts 
bind -p | grep --invert-match --regexp '^$' --regexp '^#' --regexp 'self-insert$' | sed --expression "s/\(.*\)/bind '\1'/" | tr --squeeze-repeats '\n' ';' # shortcuts code 
branch=name && git config --add svn-remote.$branch.url http://svn/repo/branches/$branch && git config --add svn-remote.$branch.fetch :refs/remotes/$branch && git svn fetch $branch && git checkout -b local-$branch --track $branch && git svn rebase $branch && unset branch 
builtin # bash 
bundle help # rails 
bundle init # rails 
bundle install # rails 
bundle package 
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
ccsm & # compiz settings 
cd -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
cd - # back 
cd -- "$(mktemp --directory)" 
checkbashisms ./*.sh 
chmod u+x test.sh 
chromium-browser --proxy-pac-url=http://example.org:8888/proxy.pac 
cmp --print-bytes $(which arch) $(which uname) # binary diff 
coffee -v # coffeescript 
comm -23 <(grep --no-filename ^FN: ~/contacts.vcf | sort --unique) <(grep --no-filename ^FN: ~/contacts/*.vcf | sort --unique) 
comm -23 --nocheck-order <(alias -p) <(bash -lc 'alias -p') 
completions git config '' | grep user # autocomplete 
./configure --help | pager # packaging 
./configure # packaging 
convert -density 150 -quality 100 input.pdf output.jpg 
convert ./*.jpg output.pdf # graphics 
convert ./name-*.gif name-%04d.png # format number graphics 
count . # filesystem 
cp file{,.orig} # filesystem 
cppcheck foo.c 
createdb --template template0 --username username dbname # postgresql 
cronlist 
cronlist --help 
cronlist --system 
cronlist --to '23:59:59' 
crontab -e # edit 
crontab -l 
csplit --prefix contact- --suffix-format %02d.vcf --elide-empty-files --quiet ~/contacts.vcf '/BEGIN:VCARD/' '{*}' 
csplit --prefix header- --suffix-format %02d.txt --elide-empty-files --quiet headers.txt '/----------------------------------------------------------/1' '{*}' 
cucumber --dry-run # rails 
cucumber # rails 
cucumber --version # rails 
curl --insecure --location http://xrl.us/perlbrewinstall | bash # development 
curl --version 
cut --delimiter ':' --fields 1 /etc/group | sort 
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
date +%FT%T.%N # iso time 
date --rfc-3339=ns --date="2001-02-03T04:05:06.7 + 1 year 2 months 3 days 4 hours 5 minutes 6.7 seconds" # dst time iso 
date --rfc-3339=seconds --date="@1000000000" # convert timestamp 
date +%Y-%m-%dT%H:%M:%S # iso time 
declare -a # arrays 
declare -F # functions 
declare -f schroedinger # function definition 
declare -p # color variables functions 
declare # variables functions 
~/dev/meta2jpeg/meta2jpeg.sh *.CR2 
~/dev/minecraft-scripts/backup.sh # game directory 
~/dev/minecraft-scripts/backup.sh ~/.techniclauncher # game directory 
~/dev/minecraft-scripts/install-lwjgl.sh 
~/dev/minecraft-scripts/install-Minecraft.sh # game 
~/dev/minecraft-scripts/install-Minecraft-shortcut-GNOME.sh # game 
~/dev/schemaspy2svg/schemaspy2svg.sh ~/db # database 
~/dev/tilde/scripts/make-links.sh --verbose --diff meld ~/settings/.* ~ # filesystem symlink 
~/dev/vcard/sort-lines.sh ~/dev/vcard/sorts/Gmail.re ~/contacts/*.vcf 
~/dev/vcard/split.sh *.vcf 
~/dev/xterm-color-count/xterm-color-count.sh 
~/dev/xterm-color-count/xterm-color-count.sh -v 
df --human-readable . # filesystem 
df --human-readable # filesystem 
diff <(~/bin/git diff --staged) <(~/bin/git diff --staged --minimal) 
difff --help 
diff <(git diff --staged --minimal) <(~/bin/git diff --staged --minimal) 
diff --unified file{.orig,} 
diff --unified <(hexdump -C /bin/uname) <(hexdump -C /usr/bin/arch) 
diff --unified <(printf %s $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' | uniname -bcp) <(bash -c 'trap -- $'\''printf %s --\$\`!*@\		\\\\\\\'\''\\"𠂉\ $\'\''\\n\'\'''\'' INT; traps="$(trap)"; eval "$traps"; kill -INT $$' | uniname -bcp) # test 
diff <(wget --output-document - http://svn/repo/path?p=1) <(wget --output-document - http://svn/repo/path?p=2) 
dig example.org # dns lookup internet network 
dig example.org mx # dns email lookup internet network 
dirname -- "$PWD" # parent directory 
dmesg # debug os startup 
dot -O -Tsvg ./*.dot # graphics 
dot -Tsvg graph.dot # graphics 
dotty graph.dot # graphics 
dot -V 
dpkg --get-selections | grep --invert-match deinstall | cut --fields 1 # list all installed packages 
dpkg --listfiles w3-recs 
dpkg --search "$(which apt-get)" # package file owner search 
dpkg-shlibdeps $(which bash) # binary dependency packaging 
dpkg --status bash # package 
dropdb --username username dbname # postgresql 
du --si --summarize . # disk size 
echo 0 61 62 63 | xxd -revert # hex dump convert string character byte 
echo $BASHPID # shell subshell pid 
echo "body" > ~/.events/summary # notify 
echo $COLUMNS # terminal 
echo $? # exit code 
echo 'LC_PAPER="en_GB.UTF-8"' | sudo tee --append /etc/environment # print 
echo $LINES # terminal 
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
env --ignore-environment bash -c 'printf "%s\n" "${?+?=$?}" "${#+#=$#}" "${*+*=$*}" "${@+@=$@}" "${-+-=$-}" "${!+!=$!}" "${_+_=$_}" "${$+$=$$}"; env' 
env # variable 
eval `resize -s 24 80` # terminal 
eval `ssh-agent` && ssh-add 
eval "$traps" # signal 
evince /usr/share/doc/gnu-standards/maintain.pdf.gz # help maintenance 
evince /usr/share/doc/gnu-standards/standards.pdf.gz # help 
evince /usr/share/doc/msort/msort.pdf.gz & # help 
evince /usr/share/doc/quilt/quilt.pdf.gz # help 
exclude_vcs < <(grep --recursive --fixed-strings --regexp 'foo' .) # search literal source 
exec $SHELL # replace 
exit 
exiv2 print IMG_1234.exv # metadata 
facter # hardware os 
facter --help 
facter id # user 
feh --fullscreen --hide-pointer ./* # images viewer 
ffmpeg -i %04d.jpg -vcodec libx264 -bf 0 -crf 12 -vpre medium -an -r 25 -s hd1080 timelapse.mp4 # video convert 
ffmpeg -i %04d.jpg -vcodec libx264 -bf 0 -crf 12 -vpre medium -an -r 25 -s hd1080 -vf "transpose=2" timelapse.mp4 # video convert rotate 
fg # foreground 
fgit gc -- ~/*/ ~/.*/ ~/dev/*/ /media/*/*/ 
fgit --help 
fgit pull -- ~/*/ ~/.*/ ~/dev/*/ /media/*/*/ 
fgit push -- ~/*/ ~/.*/ ~/dev/*/ 
fgit status -- ~/*/ ~/.*/ ~/dev/*/ /media/*/*/ 
file README.markdown 
find_date_sorted . -mindepth 1 # files 
find_date_sorted . -mindepth 1 | sort --reverse --zero-terminated | while IFS= read -r -d ''; do stat -- "$REPLY"; done # files loop reverse 
find . -empty 
find . -empty -delete # remove files 
find . -exec printf '%s\0' {} \; | while read -r -d ''; do printf %q "$REPLY"; printf '\n'; done 
find . -group 1000 -exec chgrp $(id --group) {} \; # update files permissions 
find -L . -type l # broken symlinks 
find . -mindepth 1 -exec printf '%s\0' {} \; | shuf --head-count 10 --zero-terminated # random shuffle files 
find . -name '*.marks' -delete # remove jedit temp files 
find . -printf x | wc --chars 
find /proc -regex '/proc/[0-9].*' -prune -o -print # not process number 
find . -regex '.*\.\(orig$\|\(BACKUP\|BASE\|LOCAL\|REMOTE\)\..*\)' -delete # remove git rebase temp files 
find . -type f -executable # files 
find . -type f -name file | exclude_vcs 
find -version 
firefox -profilemanager 
firefox -safe-mode 
for path in ./*.jpg; do mv --verbose "$path" "$(printf "%04d" $index).jpg"; let index+=1; done; unset index 
for path in ~/.minecraft/saves/*; do overviewer.py --rendermodes=smooth-lighting,smooth-night,spawn "$path" "$path"/map; done 
for path in ./*.sass; do sass-convert "$path" "${path%.*}.scss"; done 
for path in ./*.zip; do unzip "$file"; done # all 
fortune 
for vcard in ./*.vcf; do msort --bp 'BEGIN:VCARD.*?END:VCARD\r\n\r\n' --sp '^N:(.*)$' < "$vcard" > "$vcard"2; mv "$vcard"2 "$vcard"; done 
fromdos -- file # convert newline 
fullname 
fullname root 
fuseiso -p file.bin /media/mountpoint # mount 
fusermount -u /media/mountpoint # unmount 
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
git checkout . 
git checkout -b topic-svn remotes/topic # branch 
git checkout master 
git cherry-pick HEAD@{5} 
git cherry-pick master:HEAD 
git clean --dry-run -d # directories 
git clean --dry-run -dx # directories .gitignore 
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
git diff HEAD^ -- README.markdown 
git diff --ignore-all-space 
git diff --ignore-all-space --no-color | git apply --cached 
git diff --ignore-space-change 
git diff master origin/master 
git diff origin/master..HEAD # remote 
git diff --raw 
git diff --staged 
[ "$(git diff --staged | grep --count ^-)" -eq "$(git diff --staged | grep --count ^+)" ] # verify sort 
git diff --staged --ignore-space-at-eol 
git diff --staged --stat 
git difftool old new # gui 
git diff --word-diff 
git fetch 
git format-patch --find-renames HEAD^ 
git grep -I --name-only --null -e '' | xargs --null sed --in-place --expression 's/[ \t]\+\(\r\?\)$/\1/;$a\' -- # whitespace eol eof 
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
git log Makefile 
git log --oneline --decorate 
git log origin/master..HEAD # remote 
git log --patch-with-stat 
git log --stat 
git merge origin/master 
git mergetool & 
git merge topic # local branch 
git mv README{,.markdown} 
git pull 
git pull origin master 
git push 
git push --force 
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
git status 
git submodule add --force git://github.com/l0b0/make-includes.git 
git submodule add --force git://github.com/l0b0/shell-includes.git 
git submodule init 
git submodule update 
git svn clone --stdlayout --revision 1:HEAD http://svn/repo 
git svn clone --stdlayout --revision 1:HEAD --no-minimize-url http://svn/repo/path 
git svn dcommit 
git svn dcommit --dry-run 
git svn fetch 
git svn help 
git svn rebase 
git svn show-ignore >> .git/info/exclude 
git svn status 
git tag --delete name # local 
git tag v0.1 
git --version 
gksudo do-release-upgrade & # Ubuntu distro 
gksudo etherape & # network traffic visualization 
gksudo java -jar jdivelog-installer-*.jar & 
gksudo software-properties-gtk & # source 
glabels & # graphics 
glc-capture --out recording.glc minecraft 
glc-play recording.glc 
glc-play recording.glc -a 1 -o recording.wav # audio 
glc-play recording.glc -y 1 -o - | mencoder -demuxer y4m - -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=3000 -audiofile recording.wav -oac mp3lame -o recording.avi # video encoding mp4 mpeg4 
glxgears # 3d graphics benchmark 
glxinfo 
gnome-control-center sound 
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
gpg --verify *.sig # pgp signature 
grep '\(\b\|^\)command\b.* .*help' ~/.bash_history # search 
grep --files-with-matches --null "pattern" ./* 2>/dev/null | tr --complement --delete '\000' | wc --chars # count occurrences pattern 
grep --invert-match --file ~/dev/vcard/sorts/Gmail.re < ~/contacts.vcf | grep --invert-match --regexp '^ ' 
(grep --invert-match '^nameserver' /etc/resolv.conf; echo nameserver 208.67.222.222; echo nameserver 208.67.220.220) | sudo tee /etc/resolv.conf # dns configuration 
grep --quiet "^flags.*\blm\b" /proc/cpuinfo # 64 bit long mode 
grep --recursive --fixed-strings --exclude-dir .git --exclude-dir .svn --exclude-dir CVS --regexp 'foo' . # search literal source 
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
help . 
help alias 
help bind 
help builtin 
help command 
help declare 
help echo 
help enable 
help exit 
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
host example.org # dns lookup internet network ipv4 ipv6 
hostname # internet network 
hostname --short # internet network 
hp-setup # printer 
hp-wificonfig # printer 
htop 
iconv --from-code=utf-8 --to-code=iso-8859-1 utf8.txt > latin1.txt # convert encoding 
id --group 
id # group user 
id --user 
id "$USER" 
IFS=':' read -a paths <<< "$PATH" # tokenize array 
indent *.c 
indentect --help 
indentect --verbose < "$(which indentect)" 
indentect < "$(which indentect)" 
info --subnodes autoconf | pager # help 
info --subnodes automake | pager # help 
info --subnodes date | pager # help 
info --subnodes find | pager # help 
info --subnodes mktemp | pager # help examples temporary files 
info --subnodes sed | pager # help 
iostat 
ip addr show # ipv4 ipv6 address 
ip link show down 
ip link show up 
ip -oneline -family inet addr show dev eth0 # ipv4 address 
ip route show 
ipython 
irb # interactive ruby shell 
iwconfig # wireless network configuration 
java -jar ~/schemaSpy.jar -dp /usr/share/java/mysql.jar -hq -t mysql -host localhost:3306 -db database -u user -p password -o ~/db && x-www-browser file://"$HOME"/db/index.html & # db visualization 
java -jar ~/schemaSpy.jar -dp /usr/share/java/postgresql.jar -hq -t pgsql -host localhost:5432 -db database -s public -u user -p password -o ~/db && x-www-browser file://"$HOME"/db/index.html & # db visualization 
java -jar /usr/local/bin/technic-launcher-latest.jar 
java -Xmx1024M -Xms512M -cp ~/.minecraft/minecraft.jar net.minecraft.LauncherFrame 
jhead -da2010:11:12/13:14:15-2005:01:01 ./*.jpg # adjust date time image 
jobs -l # list all background 
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
longer 80 example.txt 
longest < ~/.bash_history 
lpstat -v 
lsb_release --all # linux version distro 
lscpu # hardware architecture processor 
ls --directory /proc/[^0-9]* # metadata 
lshw 
ls -l --all # list 
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
man aplay # help 
man apport-bug # help 
man apport-cli # help 
man apropos # help 
man apt-cache # help 
man apt-get # help 
man apt-key # help 
man apt-listchanges # help 
man apt-rdepends # help 
man arandr # help 
man arch # help 
man ascii # help 
man ash # help 
man avconv # help 
man awk # help 
man bashdb # help 
man bash # help 
man bc # help 
man blkid # help 
man builtins # help bash 
man cal # help 
man charsets # help 
man checkbashisms # help 
man chfn # help 
man chgrp # help 
man chmod # help 
man chown # help 
man chroot # help 
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
man df # help 
man dhclient # help 
man dh_make # help 
man diff # help 
man dig # help 
man dirname # help 
man dmidecode # help 
man dot # help 
man dotty # help 
man download-mibs # help 
man dpkg # help 
man dpkg-shlibdeps # help 
man dropdb # help postgresql 
man dropuser # help 
man du # help 
man eject # help 
man env # help 
man errno # help 
man etherape # help 
man exiv2 # help 
man expect # help 
man expr # help 
man extundelete # help 
man fakeroot # help 
man fdisk # help 
man feh # help 
man ffmpeg # help 
man file # help 
man fmt # help 
man fortune # help 
man fuseiso # help 
man fusermount # help 
man gcc # help 
man getconf # help 
man getent # help 
man gethostip # help 
man getopt # help 
man gfortran # help 
man git # help 
man gitk # help 
man git-svn # help 
man gksu # help 
man glabels # help 
man gnome-keyring-daemon # help 
man gnome-screensaver-command # help 
man gnome-screensaver # help 
man gnome-shell # help 
man gnome-specimen # help 
man gnome-terminal # help 
man gpg # help 
man grep # help 
man groupadd # help 
man groups # help 
man head # help 
man <(help2man help2man) # help 
man hexdump # help 
man hier # help 
man host # help 
man hostname # help 
man hosts # help 
man htop # help 
man id # help 
man imake # help 
man indent # help 
man initdb # help postgresql server database 
man inotify # help 
man inotifywait # help 
man install # help 
man interfaces # help 
man iostat # help 
man iotop # help 
man ip # help 
man iwconfig # help 
man java # help 
man jhead # help 
man join # help 
man json_pp # help 
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
man lsb_release # help 
man lscpu # help 
man ls # help 
man lsof # help 
man lynx # help 
man make # help 
man man # help 
man markdown # help 
man md5sum # help 
man mencoder # help 
man mkdir # help 
man mktemp # help 
man mount # help 
man mp3fs # help 
man mutt # help 
man mv # help 
man nautilus # help 
man ncal # help 
man nc # help 
man netstat # help 
man nfs # help 
man nl # help 
man nmap # help 
man nm # help 
man node # help 
man notify-send # help 
man nslookup # help 
man ntpdate # help 
man ntpq # help 
man objdump # help 
man od # help 
man openssl # help 
man paperconfig # help 
man passwd # help 
man patch # help 
man pbuilder # help 
man pdebuild # help 
man pdftk # help 
man pep8 # help 
man perldoc # help 
man perl # help 
man perlrun # help 
man pg_dumpall # help postgresql backup 
man pg_dump # help postgresql backup 
man pgrep # help 
man pidof # help 
man ping # help 
man pip # help 
man pngcrush # help 
man pod2man # help 
man postgres # help postgresql server 
man ppc386 # help 
man proc # help 
man ps # help 
man psql # help 
man psql # help postgresql 
man puppet # help 
man python # help 
man qemu # help 
man quilt # help 
man rake # help 
man rdesktop # help 
man readlink # help 
man recordmydesktop # help 
man rename # help 
man resize # help 
man rm # help 
man route # help 
man rsync # help 
man ruby # help 
man scp # help 
man screen # help 
man script # help 
man seq # help 
man service # help 
man setkeycodes # help 
man setxkbmap # help 
man sha1sum # help 
man sha512sum # help 
man sh # help 
man showkey # help 
man shuf # help 
man shunit2 # help 
man shutdown # help 
man signal # help 
man sleep # help 
man snmpd # help 
man snmptranslate # help 
man snmpwalk # help 
man software-properties-gtk # help 
man sort # help 
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
man tac # help 
man tail # help 
man tar # help 
man tee # help 
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
man uname # help 
man unicode # help 
man uniname # help 
man uniq # help 
man unzip # help 
man update-alternatives # help 
man updatedb # help 
man update-java-alternatives # help 
man uptime # help 
man useradd # help 
man usermod # help 
man utf8 # help 
man valgrind # help 
man vim # help 
man visudo # help 
man watch # help 
man wc # help 
man wdiff # help 
man wget # help 
man whatis # help 
man w # help 
man who # help 
man whois # help 
man wnpp-alert # help 
man xargs # help 
man xautolock # help 
man xclip # help 
man xdg-desktop-menu # help 
man xdotool # help 
man xev # help 
man xinput # help 
man xmkmf # help 
man xmodmap # help 
man xrandr # help 
man xrdb # help 
man xscreensaver-command # help 
man xwininfo # help 
man xxd # help 
man zip # help 
markdown_page README.markdown > README.xhtml && x-www-browser README.xhtml & 
markdown_page ~/todo/*.markdown > ~/todo.xhtml && x-www-browser ~/todo.xhtml & # list 
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
mkgithub --configure --https --verbose --user l0b0 
mkgithub --configure --ssh --verbose --user l0b0 
mkgithub ~/dev/arm 
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
mkgithub ~/dev/graphics 
mkgithub ~/dev/highlight 
mkgithub ~/dev/https-everywhere 
mkgithub ~/dev/Hypervolume 
mkgithub ~/dev/img2scad 
mkgithub ~/dev/img2vcard 
mkgithub ~/dev/indentect 
mkgithub ~/dev/job-board 
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
mkgithub ~/dev/offlickr 
mkgithub ~/dev/OpenDUNE 
mkgithub ~/dev/OpenSCAD-Minimizer 
mkgithub ~/dev/paperless 
mkgithub ~/dev/paperless.wiki 
mkgithub ~/dev/parametric-box 
mkgithub ~/dev/progit 
mkgithub ~/dev/Project-Euler 
mkgithub ~/dev/qr2scad 
mkgithub ~/dev/RAYT 
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
mkgithub ~/dev/xFormsCal 
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
nl ~/.bashrc 
nmap -T Aggressive -A -v 192.168.0.1 
nmap -v -sP 192.168.0.0/24 
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
openssl x509 -noout -fingerprint -text < my.crt 
pager /etc/issue 
pager /etc/passwd # password 
pager Makefile 
pager /proc/bus/input/devices 
pager --RAW-CONTROL-CHARS filename # color 
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
PATH=$(IFS=':'; echo "${paths[*]}") 
pavucontrol & # pulseaudio volume 
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
perl -pe 'chomp if eof' input > output # remove newline eof 
perl --version 
pgrep -u root cron 
php --interactive 
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
printf %s $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' | xclip; cmp --verbose <(printf %s $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n') <(xclip -out) # clipboard test 
printf %s $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' | xclip -selection clipboard # test keyboard 
printf %s $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' | xclip -selection primary # test mouse 
printf %s "${IFS:0:1}" 
printf "${USER}%.0s" {1..5} # repeat string 
prove 
prove --recurse 
pry 
ps afux | pager -S # processes list all tree tty 
psql --dbname postgres --username postgres < dump.sql # postgresql import 
psql --dbname postgres --username postgres # postgresql login interactive 
psql --host localhost --port 15432 --dbname postgres --username postgres <<< "COPY(SELECT datname FROM pg_database WHERE datistemplate = FALSE) TO STDOUT;" # forwarding list all postgresql 
psql --username postgres <<< "COPY(SELECT datname FROM pg_database WHERE datistemplate = FALSE) TO STDOUT;" # list all postgresql 
psql --username postgres <<< "COPY(SELECT extract(epoch from now())::Integer) TO STDOUT;" # unix integer timestamp 
psql --username postgres --dbname my_db <<< "\dt my_schema.*" # database schema tables list all postgresql 
psql --username postgres <<< "\dt" # public schema tables list all postgresql 
psql --username postgres <<< "\du" # users list all postgresql 
psql --username postgres --variable name="Robert'); DROP TABLE Students; --" <<< "COPY(SELECT :'name') TO STDOUT;" # test escape literal postgresql 
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
rbenv install 1.9.3-p327 # ruby install 
rbenv install --list # ruby all install 
rbenv local 1.9.3-p327 # ruby project 
rbenv version # ruby installed 
rbenv versions # ruby all installed 
rbenv which rails # ruby gem binary path 
rdesktop -r clipboard:CLIPBOARD -k de-ch -g 1280x1024 -r disk:$USER=$HOME hostname & # remote keyboard share windows 
readlink --canonicalize -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
read < "/path" 
read -r var 
read <<< "$text" 
recordmydesktop --windowid $(xdotool selectwindow) --no-cursor --full-shots --fps 25 --no-wm-check --no-frame -o ~/out.ogv 
rename --no-act 's/([^-]+)-.*-([^-]+)/$1-$2/' ./*.xml | grep --only-matching ' renamed as .*' | sort | uniq --repeated # safe 
rename --no-act --verbose 's/.*/sprintf "%04d.jpg", ++$main::Mad/e' ./*.jpg # video 
rename --no-act --verbose 's/txt$/html/' ./*.txt # extension suffix 
reset # clear log remove terminal text 
rm -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
rmdir ./* 
rmdir -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
rm file 
rm -- ~/pubring.gpg ~/secring.gpg 
route 
rsync --archive --recursive --progress --verbose host:/path /target # network transfer 
ruby -c test.rb # check verify syntax 
ruby --verbose 
sandbox="$(mktemp --directory)" 
sass-convert all.s{a,c}ss 
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
sed --expression '9d' file # delete line 
sed --expression '/^$/d' file 
sed --expression '/^[[:space:]]*$/d' file 
service snmpd status 
set +o noclobber 
set -o nounset 
set +o nounset 
set -o pipefail 
set +o pipefail 
(set -o posix; set) 
(set -o posix; set) | grep --only-matching ^COMP[^=]* 
set +o xtrace # disable 
set -o xtrace # enable 
./setup.py test 
setxkbmap -option compose:caps # keyboard 
setxkbmap -print # keyboard settings 
setxkbmap -verbose | awk --field-separator "+" '/symbols/ {print $2}' # keyboard layout settings 
sh 
sha1sum --check sha1sums.txt # verify checksum 
sha1sum file # checksum 
sha512sum --check sha512sums.txt # checksum 
sha512sum file # checksum 
shopt nullglob # option get 
shopt # options 
shopt -s dotglob # option set .* 
shopt -s extglob # option set ?(a|b) *(a|b) +(a|b) @(a|b) !(a|b) 
shopt -s extglob && sudo rename --no-act 's/$/.bak/' /usr/share/hunspell/en_!(US).{aff,dic} # language dictionary 
shopt -s globstar # option set ** 
shopt -s nullglob # option set * 
shopt -u nullglob # option unset * 
shortest < ~/.bash_history 
sleep 1m 
slideshow -f http://github.com/geraldb/slideshow-s6-blank/raw/master/s6blank.txt 
slideshow -t s6blank presentation.md 
sloccount . 
snmptranslate -Of .1.3.6.1.2.1.1 # OID 
snmptranslate -On .iso.org.dod.internet.mgmt.mib-2.system # symbol 
snmpwalk -v 2c -c public localhost .1.3.6.1.2.1.1 # system 
snmpwalk -v 2c -c public localhost # all 
software-properties-gtk & # software sources 
sort --unique --output result.txt source.txt 
source ~/.bash_aliases 
source ~/.bash_aliases_local 
source ~/.bashrc 
splint foo.c 
sqlite3 -line db/development.sqlite3 "select * from table_name" 
ssh-copy-id example.org 
ssh example.org 
ssh example.org < test.sh 
ssh example.org uptime 
sshfs hostname: /media/mountpoint 
ssh-keygen -f "~/.ssh/known_hosts" -R [1.2.3.4]:1234 # remove public key 
ssh-keygen -l -f /etc/ssh/ssh_host_rsa_key # host id 
ssh -L 15432:localhost:5432 example.org # local port forwarding postgresql 
ssh -p 2222 example.org 
ssh -R 9000:localhost:9000 example.org 
ssh -vvv example.org 
ssh -Y example.org 
strings $(which strings) 
stty --all # terminal settings 
stty sane # restore terminal state 
sudo add-apt-repository ppa:chrysn/openscad 
sudo add-apt-repository ppa:ubuntu-x-swat/x-updates 
sudo addgroup "$USER" group 
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
sudo apt-get install awesome awesome-extra # wm 
sudo apt-get install bashdb bison bison-doc build-essential expect gcc gcc-doc gettext gettext-doc ia32-libs-multiarch libc6-dev libgconf2-dev libglade2-dev libmysql-java libncurses5-dev libpg-java libreadline6-dev libsqlite3-dev libssl-dev libtiff-doc libtiff-tools libtool libtool-doc libxml2-dev libxml2-doc libxml-simple-perl libxslt1-dev libyaml-dev linux-doc linux-headers-generic linux-image-generic linux-source m4 make make-doc manpages-posix-dev minicom ncurses-dev openssl valgrind xdotool zlib1g-dev # linux dev 
sudo apt-get install beneath-a-steel-sky dosbox flight-of-the-amazon-queen freeciv-client-sdl freeciv-sound-standard scorched3d teeworlds uqm wesnoth wormux xmoto # game 
sudo apt-get install chromium-browser lynx-cur # web 
sudo apt-get install cloc sloccount # dev code 
sudo apt-get install colordiff cvs git-core git-cvs git-doc git-gui gitk git-svn meld qgit subversion # vcs 
sudo apt-get install comix feh # graphics viewer 
sudo apt-get install cpanminus # perl 
sudo apt-get install cppcheck indent indent-doc splint splint-doc-html # dev c cpp code lint syntax 
sudo apt-get install curl wget # web 
sudo apt-get install default-jre sun-java6-fonts sun-java6-jre # java 
sudo apt-get install deluge # torrent 
sudo apt-get install dfo # Flickr 
sudo apt-get install digikam digikam-doc exiv2 gimp gimp-help-en glabels gnuplot gnuplot-doc graphviz graphviz-doc imagemagick imagemagick-doc inkscape jhead pdftk pngcrush psutils qtpfsgui rawstudio rawtherapee # graphics 2d metadata exif jpeg 
sudo apt-get install enigmail esmtp imapfilter mutt muttprint offlineimap urlview # email 
sudo apt-get install enscript # convert postscript 
sudo apt-get install etherape traceroute # network 
sudo apt-get install extundelete 
sudo apt-get install fakeroot # chroot 
sudo apt-get install ffmpeg # video 
sudo apt-get install fortune-mod # strfile 
sudo apt-get install fuseiso 
sudo apt-get install gedit gedit-developer-plugins 
sudo apt-get install git-buildpackage 
sudo apt-get install gnome-specimen # font graphics preview 
sudo apt-get install gnome-tweak-tool 
sudo apt-get install gtk-recordmydesktop # video 
sudo apt-get install help2man # convert 
sudo apt-get install hplip-gui # printer 
sudo apt-get install htop 
sudo apt-get install hunspell-de-de hunspell-fr language-pack-de language-pack-fr language-pack-nb myspell-nb # language dictionary l10n german french norwegian 
sudo apt-get install inotify-tools # shell 
sudo apt-get install iotop # storage 
sudo apt-get install ipython pep8 pychecker pyflakes pylint python-dev python-doc python-lxml python-matplotlib python-pip python-profiler python-pydot # python dev 
sudo apt-get install jedit # editor 
sudo apt-get install kvm qemu # vm virtualization 
sudo apt-get install lastfm # music web 
sudo apt-get install libav-tools # video 
sudo apt-get install libfreeimage3 lsb-core googleearth-package xfonts-75dpi xfonts-100dpi && make-googleearth-package && sudo dpkg -i googleearth*.deb && rm googleearth*.deb 
sudo apt-get install libpg-java pgadmin3 # dev postgresql schemaspy 
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
sudo apt-get install openscad # graphics 3d 
sudo apt-get install openssh-server 
sudo apt-get install paman paprefs pavucontrol # pulseaudio 
sudo apt-get install php5-cli php5-dev php5-pear # php 
sudo apt-get install pidgin # im 
sudo apt-get install playonlinux # games 
sudo apt-get install rar # compress 
sudo apt-get install rdesktop # internet 
sudo apt-get install --reinstall package 
sudo apt-get install rsync # filesystem 
sudo apt-get install screen # virtual terminal 
sudo apt-get install shunit2 # test bash shell zsh 
sudo apt-get install snmpd snmp-mibs-downloader tkmib # snmp mib viewer 
sudo apt-get install sqlite3 sqlite3-doc # database 
sudo apt-get install sshfs 
sudo apt-get install teamspeak-client # chat voice 
sudo apt-get install tofrodos # convert newline 
sudo apt-get install ttf-bitstream-vera ttf-dejavu ttf-lyx ttf-xfree86-nonfree # font 
sudo apt-get install ubuntu-restricted-extras # audio video codec 
sudo apt-get install uniutils # unicode 
sudo apt-get install varicad2012-en # cad graphics 3d 
sudo apt-get install videolan-doc vlc vlc-plugin-pulse # video audio 
sudo apt-get install vim vim-rails # editor 
sudo apt-get install wine winetricks # windows 
sudo apt-get install x264 # video codec 
sudo apt-get install xautolock 
sudo apt-get install xclip 
sudo apt-get install xournal # editor pdf 
sudo apt-get purge indicator-appmenu 'overlay-scrollbar*' 'ubuntuone-*' unity-lens-music unity-lens-video zeitgeist # unity spyware 
sudo apt-get update 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E6A233DBE3AFBEFC # jedit 
sudo blkid -o list 
sudo chfn -f "My Name" "$USER" # full name 
sudo chgrp --recursive nogroup -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' # test 
sudo chown nobody "$sandbox" 
sudo chown --recursive "$USER":"$USER" ~/.matplotlib 
sudo chown --recursive "$USER":"$USER" RECOVERED_FILES 
sudo chown "$USER":"$USER" /media/mountpoint 
sudo chroot /var/jail/"$USER" su --login "$USER" # jail 
sudo cpanm Net::LDAP # install ldap 
sudo cp /sys/class/hwmon/hwmon0/device/fan1_max /sys/class/hwmon/hwmon0/device/fan1_output # hardware macmini4,1 speed 
sudo crontab -e # edit 
sudo ~/dev/tilde/scripts/install-all.sh 
sudo ~/dev/tilde/scripts/suspend-on-close.sh 
sudo dmidecode 
sudo dmidecode --string system-product-name 
sudo dmidecode --type 1 
sudo dmidecode --type system 
sudo download-mibs 
sudo dpkg-reconfigure ca-certificates 
sudo dpkg-reconfigure keyboard-configuration 
sudo editor /etc/apt/sources.list 
sudo editor /etc/default/keyboard 
sudo editor /etc/fstab 
sudo editor /etc/hosts 
sudo editor /etc/postgresql/*/main/pg_hba.conf 
sudo editor /etc/rc.local 
sudo editor /etc/X11/xorg.conf 
sudo /etc/init.d/postgresql reload 
sudo extundelete --restore-directory /dir/ /dev/sda1 
sudo fdisk -l 
sudo find /usr/share/hunspell/ -type l \( -name '*.aff' -o -name '*.dic' \) -exec mv {} {}.bak \; # language dictionary 
sudo gem install slideshow 
sudo iotop 
sudo iotop --batch --iter 1 
sudo ip link set dev eth0 up 
sudo ldconfig 
sudo lshw | pager 
sudo make distclean 2>&1 | tee make_distclean.out~ 
sudo make docinstall 2>&1 | tee make_docinstall.out~ 
sudo make install 
sudo make install 2>&1 | tee make_install.out~ 
sudo make pkginstall 2>&1 | tee make_pkginstall.out~ 
sudo make topclean 2>&1 | tee make_topclean.out~ 
sudo make uninstall 
sudo mkdir /media/mountpoint 
sudo mount --all 
sudo mount --options remount,ro /dev/sda1 # readonly restore 
sudo mount --options remount,rw /dev/sda1 # writeable 
sudo netstat --listening --tcp --numeric-ports --program | grep '\(^[A-Z]\|^\([^[:space:]]\+[[:space:]]\+\)\{3\}[^[:space:]]\+:22\b\)' # internet connections server search 
sudo ntpdate pool.ntp.org 
sudo paperconfig --paper a4 
sudo passwd --delete root # disable 
sudo pip install --upgrade pip 
sudo pip install --upgrade vcard 
sudo pip install --upgrade worktime 
sudo pip uninstall vcard 
sudo reboot 
sudo rm --force --recursive ~/build ~/src 
sudo sed --in-place.bak --expression 's/^\(\s*\)\(native_origins = \[this_os\]\)/\1\2\n\1native_origins.append("Ubuntu")/' /usr/share/pyshared/apport/packaging_impl.py 
sudo sed --in-place --expression 's/^mibs/#mibs/' /etc/snmp/snmp.conf 
sudo service cups restart 
sudo service postgresql reload 
sudo sh -c 'add-apt-repository "deb http://repository.spotify.com stable non-free" && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 94558F59 && apt-get update && apt-get install spotify-client' 
sudo sh -c 'add-apt-repository ppa:voria/ppa && apt-get update && apt-get install samsung-backlight' 
sudo sh -c 'add-apt-repository ppa:webupd8team/java && apt-get update && apt-get install oracle-java7-installer' 
sudo sh -c 'apt-get update && apt-get upgrade --yes && if [ -f /var/run/reboot-required ]; then echo You should reboot; fi' 
sudo sh -c 'dhclient -r wlan0 && dhclient wlan0' # request refresh dhcp ip 
sudo sh -c 'ip addr add 192.168.0.99/16 wlan0 && dhclient wlan0' # set ip address network 
sudo showkey # keyboard 
sudo strace -p 123 # process 
sudo tee /sys/class/hwmon/hwmon0/device/fan1_output <<<5500 # hardware macmini4,1 speed 
sudo traceroute -4 -p 1234 -T example.org # ipv4 port tcp network 
sudo umount mp3 
sudo update-alternatives --config java # interactive 
sudo update-alternatives --set editor "$(which vim.basic)" # default 
sudo update-alternatives --set x-www-browser "$(which firefox)" # default 
sudo updatedb 
sudo update-grub 
sudo -u postgres createuser --pwprompt username 
sudo -u postgres dropuser username 
sudo -u postgres pg_dumpall > backup.sql # postgresql backup 
sudo -u postgres pg_dump postgres > backup.sql # postgresql backup 
sudo -u postgres psql --single-transaction --file backup.sql # restore postgresql 
sudo -u postgres service postgresql reload # configuration 
sudo usermod --gid group "$USER" # change default group 
sudo usermod --groups "$(id --name --groups | sed --expression 's/ \?group \?/ /g;s/ /,/g;s/^,//;s/,$//')" "$USER" # remove group 
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
svn info | sed --quiet --expression 's/^Revision: //p' # revision 
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
TAGS=all guard 
TAGS="$USER" guard 
tail --follow name --retry $(find /var/log/ -type f -exec file -- {} \; | grep ':.*\(ASCII\|UTF\)' | cut --delimiter : --field 1) # text 
tail --follow name --retry /var/log/messages 
tar --create --gzip --exclude-vcs --directory ~/dev --file ~/tilde.tar.gz tilde # compress gzip 
tar --extract --gzip --file ~/tilde.tar.gz # decompress gzip 
tar --extract --gzip --transform 's#.*/##' --file ~/tilde.tar.gz # decompress flatten gzip 
tar --list --gzip --file ~/tilde.tar.gz 
telnet localhost 1234 # network 
./test.sh 
./test.sh "first argument" "second argument 
./test.sh "first argument" "second argument" 
time make test 
timeout 1 sleep 2 
tkmib & 
todos -- file # convert newline 
top 
top -c # command line 
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
umask -S # symbolic 
umount-image ./*.iso 
uname --all 
uname --kernel-name --kernel-release --kernel-version --machine --processor --hardware-platform --operating-system # anonymized 
unetbootin 
unset -f function 
unset variable_or_function 
unset -v variable 
update-java-alternatives --jre --list 
upgrade 
uptime 
/usr/local/JDiveLog/bin/jdivelog 
vainfo 
valgrind foo # check memory binary 
vcard ~/contacts/*.vcf 
vim -c "setfiletype sh" test 
vlc --ffmpeg-hw --verbose 2 file.1080p.x264.mkv # video h.264 
vlc --full-help | pager 
vlc --fullscreen --deinterlace -1 --deinterlace-mode yadif2x --video-filter postproc --postproc-q 6 --audio-language ja --sub-language en --verbose 2 --advanced dvdsimple:///dev/dvd & 
vlc http://www.lynnepublishing.com/surround/www_lynnemusic_com_surround_test.ac3 # audio 
vlc --spdif http://www.lynnepublishing.com/surround/www_lynnemusic_com_surround_test.ac3 # audio 
vmware 
w 
wait # process pid 
watch 'svn diff' 
watch_url http://example.org/ '/irrelevant variable/d;s/search/replacement/g' 1d # change 
wc --lines -- $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n' | head --lines=1 | cut --delimiter ' ' --fields 1 # line count test 
wdiff -w "$(tput bold && tput setaf 1)" -x "$(tput sgr0)" -y "$(tput bold && tput setaf 2)" -z "$(tput sgr0)" path1 path2 # color word diff 
wget --output-document - http://user:password@host/function?id=foo 2>service.log | json_pp # web service 
wget --server-response --output-document=/dev/null http://example.org/ # web header 
whatis mv # exact help man 
which make 
while IFS= read -r -d '' -u 9; do if [[ "$(file --brief --special-files --mime-type -- "$REPLY")" = text/* ]]; then sed --in-place --expression 's/[ \t]\+\(\r\?\)$/\1/;$a\' -- "$REPLY"; else echo "Skipping $REPLY" >&2; fi; done 9< <(find . \( -type d -regex '^.*/\.\(git\|svn\)$' -prune -false \) -o -type f -exec printf '%s\0' {} \;) # whitespace eol eof 
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
worktime --end=$(date --date=Thursday +%Y-%m-%d) > ~/week.xhtml && x-www-browser ~/week.xhtml & 
xclip -in filename.txt # mouse clipboard save 
xclip -out -selection clipboard # keyboard print stdout 
xclip -out -selection primary # mouse clipboard print stdout 
xev 
xinput --list 
xinput --list 10 
xinput --list-props 10 
xkill 
xmodmap -pp >~/xmodmap 
xrdb -load ~/.Xresources 
xrdb -query # list 
xscreensaver-command -lock 
xscreensaver-command -version 
xterm -version 
xwininfo -id $(xdotool selectwindow) 
x-www-browser /tmp/xterm-screenshot.*.html & 
x-www-browser /usr/share/doc/debian-policy/policy.html/index.html & # packaging linux dev 
x-www-browser /usr/share/doc/developers-reference/index.html & # packaging linux dev 
x-www-browser /usr/share/doc/git-doc/index.html & # help 
x-www-browser /usr/share/doc/maint-guide/html/index.en.html & # packaging linux dev 
x-www-browser /usr/share/doc/nethack-spoilers/gazetteer/index.html & 
x-www-browser /usr/share/doc/ntp-doc/html/ntpq.html & # help 
x-www-browser /usr/share/doc/python-doc/html/index.html 
x-www-browser /usr/share/doc/w3-recs/html/www.w3.org/TR/2003/REC-SVG11-20030114/index.html & # help reference svg 
xxd $(which xxd) | head --lines=1 
yes | dh_make --single && printf %s $'*.EX\n*.ex\n' > debian/.gitignore && git add debian 
zless /usr/share/doc/autotools-dev/README.Debian.gz # help 
zless /usr/share/doc/devscripts/README.gz # help 
zless /usr/share/doc/rar/rar.txt.gz # help compress git mergetool 
