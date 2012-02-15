aplay -L 
apropos bash 
apt-cache depends bash 
apt-cache search bash 
apt-cache show bash 
apt-cache showsrc bash 
apt-cache stats bash 
apt-get source apt 
arch 
bash 
bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer) 
bash test.sh 
bash --version 
bash -x 
bchunk image.bin image.cue image.iso 
bg 
builtin 
bundle help 
bundle init 
bundle install 
bundle install --binstubs=./bundler_stubs 
bundle update 
cap 
cap deploy 
cap deploy:check 
cap deploy:migrations 
cap deploy:rollback 
cap deploy:setup 
capify . 
cat ~/contacts/*.vcf > ~/all.vcf 
cat /etc/papersize 
cat /etc/*release 
cat /proc/cpuinfo 
cat /proc/devices 
cat /proc/filesystems 
cat /proc/misc 
cat /proc/stat 
cat /proc/vmstat 
cd 
cd - 
cd ./ 
cd ../ 
cd ~/contacts/ 
cd ~/dev/bm/ 
cd ~/dev/count/ 
cd ~/dev/csv2zarafa-contacts/ 
cd ~/dev/dialogue/ 
cd ~/dev/dialogue.wiki/ 
cd ~/dev/difff/ 
cd ~/dev/export/ 
cd ~/dev/fgit/ 
cd ~/dev/filterous/ 
cd ~/dev/graphics/ 
cd ~/dev/https-everywhere/ 
cd ~/dev/indentect/ 
cd ~/dev/jail/ 
cd ~/dev/lines/ 
cd ~/dev/make-links/ 
cd ~/dev/mian/ 
cd ~/dev/minecraft-scripts/ 
cd ~/dev/mkgithub/ 
cd ~/dev/mount-image/ 
cd ~/dev/msort/ 
cd ~/dev/paperless/ 
cd ~/dev/paperless.wiki/ 
cd ~/dev/schemaspy2svg/ 
cd ~/dev/shunit-ng/ 
cd ~/dev/tilde/ 
cd ~/dev/tilde/scripts/ 
cd ~/dev/txt2cloud/ 
cd ~/dev/vcard2mutt/ 
cd ~/dev/vcard-module/ 
cd ~/dev/worktime/ 
cd /home/$USER/ 
cd ~/.minecraft/ 
cd ~/personal/ 
cd ~/settings/ 
chmod u+x test.sh 
chmod +x $rvm_path/hooks/after_cd_bundler 
cmp -b $(which arch) $(which uname) 
completions git config '' | grep user 
./configure 
./configure --help | less 
count . 
cp file{,.orig} 
createdb -T template0 -U username dbname 
crontab -e 
crontab -l 
cucumber 
cucumber --dry-run 
curl -kL http://xrl.us/perlbrewinstall | bash 
curl --version 
cvs log 
date --date="2001-09-09 03:46:40+02:00" +%s 
date --rfc-3339=seconds --date="@1000000000" 
date +%Y-%m-%d 
~/dev/minecraft-scripts/backup.sh 
~/dev/minecraft-scripts/install-Minecraft.sh 
~/dev/minecraft-scripts/install-Minecraft-shortcut-GNOME.sh 
~/dev/schemaspy2svg/schemaspy2svg.sh ~/db 
 ~/dev/tilde/scripts/cleanup.sh -v 
~/dev/tilde/scripts/make-links.sh -v -d meld ~/settings/.* ~ 
df -h 
df -h . 
diff -u file{.orig,} 
diff -u <(hexdump -C /bin/uname) <(hexdump -C /usr/bin/arch) 
diff <(wget -O- http://svn/repo/path?p=1) <(wget -O- http://svn/repo/path?p=2) 
dirname $PWD 
DISPLAY=:0 compiz --replace 
DISPLAY=:0 gnome-shell --replace 
dmesg 
dos2unix file 
dot -O -Tsvg *.dot 
dot -Tsvg graph.dot 
dotty graph.dot 
dpkg -s bash 
dpkg -S "$(which apt-get)" 
dropdb -U username dbname 
echo $? 
echo $'--$`\\! *@ \a\b\E\f\r\t\v\"\' \n' > $'--$`\\! *@ \a\b\E\f\r\t\v\"\' \n' 
echo $COLUMNS 
echo 'LC_PAPER="en_GB.UTF-8"' | sudo tee -a /etc/environment 
echo $LINES 
echo "$PATH" 
echo "${paths[@]}" 
echo "${paths[0]}" 
echo "${paths[@]: -1}" 
echo $PROMPT_COMMAND 
echo $REPLY 
echo $TERM 
echo $WINEPREFIX 
empty_line_before_eof -i * 
env 
eval `resize -s 24 80` 
exit 
facter 
facter --help 
facter id 
ffmpeg -i %04d.jpg -vcodec libx264 -bf 0 -crf 12 -vpre medium -an -r 16 -s hd720 timelapse.mp4 
fg 
fgit gc --aggressive -- ~/*/ ~/.*/ ~/dev/*/ 
fgit pull -- ~/*/ ~/.*/ ~/dev/*/ /media/*/*/ 
fgit push -- ~/*/ ~/.*/ ~/dev/*/ 
fgit status -- ~/*/ ~/.*/ ~/dev/*/ /media/*/*/ 
file README.markdown 
filterous -dtnb --tag toread --ntag read < ~/personal/bookmarks.xml | less 
find . -empty 
find . -empty -delete 
find . -name '*.marks' -delete # remove jEdit temp files 
find . -print0 | while read -r -d ''; do printf %q "$REPLY"; printf '\n'; done 
find . -printf x | wc -c 
find . -regex '.*\.\(orig$\|\(BACKUP\|BASE\|LOCAL\|REMOTE\)\..*\)' -delete # remove git rebase temp files 
find . -type f -name file | exclude_vcs 
firefox -profilemanager 
firefox -safe-mode 
for path in *.jpg; do mv -v "$path" "$(printf "%04d" $index).jpg"; let index+=1; done; unset index 
for path in ~/.minecraft/saves/*; do overviewer.py --rendermodes=smooth-lighting,smooth-night,spawn "$path" "$path"/map; done 
fortune 
for vcard in *.vcf; do msort -b 'BEGIN:VCARD.*?END:VCARD\r\n\r\n' -s '^N:(.*)$' < "$vcard" > "$vcard"2; mv "$vcard"2 "$vcard"; done 
gcc --version 
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
git add LICENSE 
git add Makefile 
git add -p 
git add README.markdown 
git add tools.mk 
git checkout . 
git checkout master 
git clone git@github.com:l0b0/mkgithub.git 
git clone https://github.com/terreActive/redmine.git 
git commit 
git commit -am "Example" 
git config --get-all 
git config --global github.user l0b0 
git config --global mergetool.prompt false 
git config -l 
git diff 
git diff HEAD^ -- README.markdown 
git diff --ignore-all-space 
git diff --ignore-space-change 
git diff master origin/master 
git diff --raw 
git diff --staged 
git diff --word-diff 
git fetch 
git gui& 
git help add 
git help clone 
git help config 
git help diff 
git help fetch 
git help init 
git help log 
git help merge 
git help pull 
git help rebase 
git help remote 
git help stash 
git help submodule 
git help svn 
git init 
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
git push -u origin master 
git rebase --continue 
git rebase --interactive HEAD~20 
git remote add --tags -f origin ssh://user@example.org/home/user/repo 
git remote -v show 
git reset HEAD^ 
git stash 
git stash clear 
git stash && git merge origin/master && git stash pop 
git stash && git rebase --interactive HEAD~20 
git stash list 
git stash pop 
git stash show -u 
git status 
git svn clone -s -r 1:HEAD http://svn/repo 
git svn clone -s -r 1:HEAD --no-minimize-url http://svn/repo/path 
git svn dcommit 
git svn dcommit --dry-run 
git svn fetch 
git svn help 
git svn rebase 
git svn status 
git --version 
glc-capture -o recording.glc minecraft 
glc-play recording.glc 
glc-play recording.glc -a 1 -o recording.wav # audio 
glc-play recording.glc -y 1 -o - | mencoder -demuxer y4m - -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=3000 -audiofile recording.wav -oac mp3lame -o recording.avi # video encoding MP4 MPEG4 
glxinfo 
gnome-control-center sound 
gnome-screensaver-command -l 
grep --color=always "pattern" . | exclude_vcs 
grep -lZ "pattern" * 2>/dev/null | tr -cd '\000' | wc -c 
grep -r --exclude-dir .svn "pattern" . 
grep -r "pattern" . | grep -v '/\.svn/' 
grep $USER /etc/passwd 
groups $USER 
guard 
guard help 
guard list 
guard show 
gunzip example.gz 
gzip example.txt 
help echo 
help history 
help local 
help printf 
help read 
help set 
help shopt 
help type 
help typeset 
help ulimit 
help umask 
help wait 
host example.org 
hostname 
hostname -s 
iconv --from-code=utf-8 --to-code=iso-8859-1 utf8.txt > latin1.txt 
id 
id -u 
id $USER 
ifconfig 
ifconfig -a 
ifconfig -a eth0 
IFS=':' read -a paths <<< "$PATH" 
if [[ "$(type rvm | head -1)" != 'rvm is a function' ]]; then echo "Installation failed"; fi 
imapfilter 
indentect -v < "$(which indentect)" 
indentect < "$(which indentect)" 
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
killall awesome 
killall firefox 
killall gdm 
killall keepassx 
killall npviewer.bin 
killall plugin-container 
komodo & 
l 
l ~ 
la 
la ~ 
ldconfig 
ldd $(which bash) 
less /etc/issue 
less /etc/passwd 
less Makefile 
less /proc/bus/input/devices 
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
lshw 
ls -la 
ls -lr 
ls -lt 
ls -lt /var/log/ 
lsmod 
lsof 
lsof +c 0 | grep gnome-terminal | wc -l 
lspci | grep -i audio 
lsusb | grep -i cam 
m4 --version 
make 
make 2>&1 | tee > make_compile.out~ 
make clean 
make explain 2>&1 | grep MAKE 
make explain-MAKE 
make install 
make test 
make test 2>&1 | tee > make_test.out~ 
make variables 
man addgroup 
man apropos 
man arch 
man ascii 
man bash 
man blkid 
man charsets 
man chgrp 
man chmod 
man chown 
man chroot 
man cmp 
man comm 
man cp 
man createdb 
man createuser 
man crontab 
man curl 
man cut 
man date 
man diff 
man dot 
man dotty 
man errno 
man expr 
man ffmpeg 
man file 
man find 
man fmt 
man fortune 
man getopt 
man git 
man gksu 
man gnome-shell 
man gnome-terminal 
man gpg 
man grep 
man groupadd 
man head 
man hier 
man hostname 
man hosts 
man id 
man inotify 
man inotifywait 
man install 
man interfaces 
man iostat 
man iotop 
man ip 
man join 
man kill 
man ld 
man ldd 
man less 
man line 
man locate 
man logger 
man ls 
man lsof 
man lynx 
man markdown 
man mktemp 
man mount 
man mutt 
man mv 
man nautilus 
man netstat 
man nl 
man paperconfig 
man patch 
man perl 
man pgrep 
man ping 
man pngcrush 
man pod2man 
man psql 
man puppet 
man rake 
man recordmydesktop 
man rename 
man resize 
man rm 
man route 
man scp 
man sed 
man seq 
man sh 
man shunit2 
man signal 
man sleep 
man sort 
man ssh 
man ssh_config 
man ssh-copy-id 
man sshd 
man stat 
man strfile 
man su 
man sudo 
man tail 
man tar 
man tee 
man time 
man timeout 
man tput 
man tr 
man traceroute 
man trash 
man ubuntu-bug 
man udevadm 
man uname 
man unicode 
man uniq 
man updatedb 
man useradd 
man utf8 
man vim 
man w 
man watch 
man wc 
man wdiff 
man wget 
man xdg-desktop-menu 
man xdotool 
man xinput 
man xwininfo 
markdown_page README.markdown > README.xhtml 
markdown_page "${TODOS[@]}" > ~/todo.xhtml 
markdown README.markdown 
markdown README.markdown | lynx -stdin 
markdown README.markdown > README.html 
meld .& 
meld old new& 
meld <(ssh example.org cat /etc/hosts) <(ssh example2.org cat /etc/hosts) 
meld <(wget -O- http://git.gnome.org/browse/meld/plain/.gitignore?id=250066249e06241e3bfd3863c1a233fb45f40a12) <(wget -O- http://git.gnome.org/browse/meld/plain/.gitignore) 
meld <(wget -O- http://svn/repo/path?p=1) <(wget -O- http://svn/repo/path?p=2) 
minecraft & 
mintwelcome 
mkdir -- $'--$`\\! *@ \a\b\E\f\r\t\v\"\' \n' 
mkdir test 
mkgithub -chvu l0b0 
mkgithub -csvu l0b0 
mkgithub ~/dev/bm 
mkgithub ~/dev/bookmarklets 
mkgithub ~/dev/bookmarklets-janmoesen 
mkgithub ~/dev/CERN-Central-Library-bookmark 
mkgithub ~/dev/coin-sorter 
mkgithub ~/dev/count 
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
mkgithub ~/dev/rvm 
mkgithub ~/dev/schemaspy2svg 
mkgithub ~/dev/screensaver-info 
mkgithub ~/dev/see-colon 
mkgithub ~/dev/shunit-ng 
mkgithub ~/dev/SICP 
mkgithub ~/dev/spark 
mkgithub ~/dev/Standardy 
mkgithub ~/dev/tilde 
mkgithub ~/dev/txt2cloud 
mkgithub ~/dev/unflickr 
mkgithub ~/dev/unrarr 
mkgithub ~/dev/vcard2mutt 
mkgithub ~/dev/vcard-module 
mkgithub ~/dev/worktime 
mkgithub ~/dev/xbug 
mkgithub ~/dev/xFormsCal 
mkgithub -h 
mkgithub --help 
mogrify -crop 2316x1303+0+0 *.jpg 
mogrify -format jpg *.CR2 
mount 
mount -n -o remount,defaults /dev/sda1 / 
mutt 
mutt -d 5 
mutt -v 
mutt -vv 
mv file{.orig,} 
neato -O -Tsvg *.dot 
netstat 
netstat -a 
nl ~/.bashrc 
nmap -T Aggressive -A -v 192.168.0.1 
nmap -v -sP 192.168.0.0/24 
patch -p0 < patch.diff 
PATH=$(IFS=':'; echo "${paths[*]}") 
perlbrew switch 
perl_modules 
perl_module_version URI 
perl --version 
pgrep -u root cron 
php -a 
php --version 
ping -c 4 example.org 
ping example.org 
pip help 
pngcrush -brute -d /target *.png 
PREFIX=~ sudo make install 
printf %q "$(echo $'--$`\\! *@ \a\b\E\f\r\t\v\"\' \n')" 
printf %q "$IFS" 
printf %s "${IFS:0:1}" 
prove 
prove -r 
pry 
psql dbname username < dump.sql 
psql -U db_user db_name 
ps wafux 
pulseaudio --kill && pulseaudio --start 
puppet describe -s user 
puppet resource --help 
puppet resource --types 
puppet resource user 
puppet resource user root 
pwd # current directory 
qgit .& # GUI 
rails console 
rails destroy controller sessions # delete 
rails destroy scaffold user # delete 
rails generate controller sessions new create destroy # create 
rails generate migration add_email_to_user email:string email_plain_text_only:boolean # create 
rails generate scaffold user name:string full_name:string hashed_password:string salt:string description:text password_expiration:datetime birthday:date visits:integer photo:binary enabled:boolean distance:float weight:decimal update_stats:time last_checkout:timestamp # create 
rails new project_name # create 
rails server -e production -p 3002 # start 
rails server -e test -p 3001 # start 
rails server # start 
rails --version 
rake db:migrate # rails database 
rake db:reset # rails database 
rake db:rollback # rails database 
rake db:seed # rails database 
rake routes # rails web 
rake --tasks 
rake test 
read < "/path" 
read -r var 
read <<< "$text" 
recordmydesktop --windowid $(xdotool selectwindow) --no-cursor --full-shots --fps 25 --no-wm-check --no-frame -o ~/out.ogv 
rename -n 's/([^-]+)-.*-([^-]+)/$1-$2/' *.xml 
rm -- $'--$`\\! *@ \a\b\E\f\r\t\v\"\' \n' 
rmdir * 
rmdir -- $'--$`\\! *@ \a\b\E\f\r\t\v\"\' \n' 
rm file 
route 
ruby -v 
rvm 
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
rvm --rvmrc --create use ruby-version@project_name 
rvm usage 
rvm use 1.9.3-p0 
rvm use system 
rvm use system --default 
rvm version 
sandbox="$(mktemp -d)" 
schemaspy2svg ~/db 
schemaspy2svg --help 
scp example.org:/home/jdoe/example.txt . 
scp -P 2222 example.org:/home/jdoe/example.txt . 
scp -r file example.org:~ 
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
setxkbmap -v | awk -F "+" '/symbols/ {print $2}' 
sh 
sha1sum file 
shopt -s extglob 
shopt -s globstar 
shopt -s nullglob 
shopt -u nullglob 
sleep 1m 
sloccount . 
 sort -u -o ~/dev/tilde/.bash_history ~/dev/tilde/.bash_history 
source ~/.bash_aliases 
source ~/.bash_aliases_local 
source ~/.bashrc 
sqlite3 -line db/development.sqlite3 "select * from table_name" 
ssh-copy-id example.org 
ssh example.org 
ssh example.org uptime 
ssh -p 2222 example.org 
ssh -R 9000:localhost:9000 example.org 
ssh -vvv example.org 
ssh -Y example.org 
strings /usr/bin/strings 
sudo add-apt-repository ppa:ubuntu-x-swat/x-updates 
sudo addgroup $USER group 
sudo apt-get dist-upgrade 
sudo apt-get install autoconf 
sudo apt-get install automake 
sudo apt-get install bash 
sudo apt-get install binutils 
sudo apt-get install bison 
sudo apt-get install bison-doc 
sudo apt-get install build-essential 
sudo apt-get install clisp 
sudo apt-get install clisp-dev 
sudo apt-get install clisp-doc 
sudo apt-get install cloc sloccount 
sudo apt-get install colordiff 
sudo apt-get install curl 
sudo apt-get install cvs 
sudo apt-get install default-jre 
sudo apt-get install deluge 
sudo apt-get install dos2unix 
sudo apt-get install enigmail 
sudo apt-get install enscript 
sudo apt-get install esmtp 
sudo apt-get install fakeroot 
sudo apt-get install feh 
sudo apt-get install ffmpeg 
sudo apt-get install fortune fortune-mod 
sudo apt-get install gcc 
sudo apt-get install gedit gedit-developer-plugins 
sudo apt-get install git-core git-gui 
sudo apt-get install git-doc 
sudo apt-get install gitk 
sudo apt-get install git-svn 
sudo apt-get install graphviz 
sudo apt-get install graphviz-doc 
sudo apt-get install gtk-recordmydesktop 
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
sudo apt-get install libc6-dev 
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
sudo apt-get install markdown 
sudo apt-get install meld 
sudo apt-get install mencoder 
sudo apt-get install minicom 
sudo apt-get install mit-scheme 
sudo apt-get install ncurses-dev 
sudo apt-get install nfs-common 
sudo apt-get install ntp 
sudo apt-get install ntp-doc 
sudo apt-get install offlineimap 
sudo apt-get install openssh-server 
sudo apt-get install openssl 
sudo apt-get install pdftk 
sudo apt-get install pep8 
sudo apt-get install pgadmin3 
sudo apt-get install php5-cli 
sudo apt-get install php5-dev php-pear 
sudo apt-get install pidgin 
sudo apt-get install playonlinux 
sudo apt-get install pngcrush 
sudo apt-get install puppetmaster 
sudo apt-get install pychecker 
sudo apt-get install pyflakes 
sudo apt-get install pylint 
sudo apt-get install python2.6 
sudo apt-get install python2.6-dev 
sudo apt-get install python2.6-doc 
sudo apt-get install python2.7 
sudo apt-get install python-dev 
sudo apt-get install python-doc 
sudo apt-get install python-lxml 
sudo apt-get install python-pip 
sudo apt-get install python-profiler 
sudo apt-get install python-pydot 
sudo apt-get install python-setuptools 
sudo apt-get install qgit 
sudo apt-get install rdesktop 
sudo apt-get install rsync 
sudo apt-get install ruby-dev 
sudo apt-get install sbcl 
sudo apt-get install screen 
sudo apt-get install shunit2 
sudo apt-get install sqlite3 
sudo apt-get install sqlite3-doc 
sudo apt-get install strfile 
sudo apt-get install subversion 
sudo apt-get install sun-java6-fonts 
sudo apt-get install sun-java6-jre 
sudo apt-get install sysv-rc-conf 
sudo apt-get install ttf-bitstream-vera ttf-dejavu ttf-lyx ttf-xfree86-nonfree 
sudo apt-get install ubuntu-restricted-extras 
sudo apt-get install unrar-free 
sudo apt-get install vim 
sudo apt-get install vim-puppet 
sudo apt-get install vim-rails 
sudo apt-get install vlc 
sudo apt-get install wget 
sudo apt-get install wine 
sudo apt-get install winetricks 
sudo apt-get install x264 
sudo apt-get install xournal 
sudo apt-get install zlib1g-dev 
sudo apt-get purge bash 
sudo apt-get update 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys FFFFFFFFFFFFFFFF 
sudo blkid -o list 
sudo chown nobody "$sandbox" 
sudo ~/dev/tilde/scripts/install-all.sh 
sudo dmidecode 
sudo dmidecode --type 1 
sudo dmidecode --type system 
sudo dpkg-reconfigure ca-certificates 
sudo /etc/init.d/postgresql reload 
sudo iotop 
sudo lshw | less 
sudo make distclean 2>&1 | tee make_distclean.out~ 
sudo make docinstall 2>&1 | tee make_docinstall.out~ 
sudo make install 
sudo make install 2>&1 | tee make_install.out~ 
sudo make pkginstall 2>&1 | tee make_pkginstall.out~ 
sudo make topclean 2>&1 | tee make_topclean.out~ 
sudo make uninstall 
sudo mount -a 
sudo nvidia-settings 
sudo paperconfig -p a4 
sudo reboot 
sudo rm -rf ~/build ~/src 
sudo service cups restart 
sudo service postgresql reload 
sudo shutdown -r now 
sudo update-alternatives --config editor 
sudo updatedb 
sudo update-grub 
sudo update-java-alternatives --jre -s java-6-sun 
sudo -u postgres createuser -s username 
sudo vim /etc/fstab 
sudo vim /etc/hosts 
sudo vim /etc/postgresql/*/main/pg_hba.conf 
sudo vim /etc/X11/xorg.conf 
sudo visudo 
sudo Xorg :1 -configure 
svn add . 
svn blame -x -w Makefile 
svn cat -r 1 Makefile | less 
svn ci -m "Test" 
svn ci --non-recursive doc 
svn co http://svn/repo ~/dir 
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
TAGS=$USER guard 
tail -F /var/log/messages 
./test.sh 
./test.sh "first argument" "second argument 
./test.sh "first argument" "second argument" 
thunderbird -profilemanager 
time make test 
timeout 1 sleep 2 
top 
touch -- $'--$`\\! *@ \a\b\E\f\r\t\v\"\' \n' 
tput colors 
traceroute example.org 
txt2cloud 
txt2cloud -m3 < $(which txt2cloud) > cloud.xhtml 
ubuntu-bug linux 
udevadm info --export-db 
ulimit -a 
uname -a 
uname -m 
unetbootin 
unix2dos file 
unset -a array 
unset -f function 
unset REPLY 
unset var 
upgrade 
vcard ~/contacts/*.vcf 
vim ~/.bash_aliases 
vim ~/.bash_aliases_local 
 vim ~/.bash_history 
vim ~/.bashrc 
vim ~/.bashrc_local 
vim -c "setfiletype sh" test 
vim ~/dev/fgit/fgit.sh 
vim ~/dev/indentect/indentect.sh 
vim ~/dev/minecraft-scripts/install-Minecraft-dependencies-Ubuntu.sh 
vim ~/dev/mkgithub/mkgithub.sh 
vim ~/dev/tilde/.muttrc 
vim ~/dev/tilde/scripts/cleanup.sh 
vim ~/dev/tilde/scripts/install-all.sh 
vim ~/dev/tilde/scripts/make-links.sh 
vim ~/.gitconfig 
vim .git/config 
vim .gitignore 
vim /lib/udev/rules.d/95-keymap.rules 
vim Makefile 
vim ~/.mkgithub 
vim ~/.mozilla/firefox/*/chrome/userContent.css 
vim ~/.muttrc 
vim ~/.muttrc_local 
vim README.markdown 
vim ~/.rvmrc 
vim ~/.ssh/config 
vim ~/.subversion/config 
vim ~/.subversion/servers 
vim ~/.vimrc 
vim ~/.wine/system.reg 
vim ~/.wine/user.reg 
vim ~/.xinitrc 
visudo 
vlc -H 
vlc --spdif --fullscreen --deinterlace -1 --deinterlace-mode yadif2x --video-filter postproc --postproc-q 6 --audio-language ja --sub-language en --verbose 2 --advanced dvdsimple:///dev/dvd & 
vlc --spdif http://www.lynnepublishing.com/surround/www_lynnemusic_com_surround_test.ac3 
vmware 
w 
watch 'svn diff' 
which make 
while IFS= read -r -u 9; do if [[ "$REPLY" =~ .*\.dot$ ]]; then dot -O -Tsvg "$REPLY"; fi; done 9< <(inotifywait -e close_write --format %f -m .) 
while IFS= read -r -u 9; do if [[ "$REPLY" =~ .*\.markdown$ ]]; then markdown_page "$REPLY" > "${REPLY%.markdown}.xhtml"; fi; done 9< <(inotifywait -e close_write --format %f -m .) 
while IFS= read -r -u 9; do if [[ "$REPLY" =~ .*_test\.rb$ ]]; then rake test; fi; done 9< <(inotifywait -e close_write --format %f -m test/*) 
wine --version 
worktime --end=$(date --date=Friday +%Y-%m-%d) > ~/week.xhtml 
xev 
xinput --list 
xinput --list 10 
xinput --list-props 10 
xkill 
xmodmap -pp >~/xmodmap 
xwininfo -id $(xdotool selectwindow) 
