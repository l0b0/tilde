-- automatically generated file. Do not edit (see /usr/share/doc/menu/html)

module("debian.menu")

Debian_menu = {}

Debian_menu["Debian_Applications_Accessibility"] = {
	{"Xmag","xmag"},
}
Debian_menu["Debian_Applications_Editors"] = {
	{"Gedit","/usr/bin/gedit","/usr/share/pixmaps/gedit-icon.xpm"},
	{"Nano", "x-terminal-emulator -e ".."/bin/nano","/usr/share/nano/nano-menu.xpm"},
	{"Xedit","xedit"},
	{"xournal","/usr/bin/xournal"},
}
Debian_menu["Debian_Applications_File_Management"] = {
	{"Baobab","/usr/bin/baobab","/usr/share/pixmaps/baobab.xpm"},
	{"Brasero","/usr/bin/brasero"},
	{"File-Roller","/usr/bin/file-roller","/usr/share/pixmaps/file-roller.xpm"},
	{"Nautilus","/usr/bin/nautilus","/usr/share/pixmaps/nautilus.xpm"},
	{"Xfdesktop","xfdesktop"},
}
Debian_menu["Debian_Applications_Graphics"] = {
	{"Blender","/usr/bin/blender","/usr/share/pixmaps/blender-32x32.xpm"},
	{"dotty","/usr/bin/dotty"},
	{"gLabels","/usr/bin/glabels-3","/usr/share/pixmaps/glabels.xpm"},
	{"Hugin","/usr/bin/hugin"},
	{"ImageMagick","/usr/bin/display.im6 logo:","/usr/share/pixmaps/display.im6.xpm"},
	{"Inkscape","/usr/bin/inkscape","/usr/share/pixmaps/inkscape.xpm"},
	{"lefty","/usr/bin/lefty"},
	{"LibreOffice Draw","/usr/bin/libreoffice --draw","/usr/share/icons/hicolor/32x32/apps/libreoffice-draw.xpm"},
	{"luminance-hdr","/usr/bin/luminance-hdr"},
	{"PTBatcherGUI","/usr/bin/PTBatcherGUI"},
	{"Rapid Photo Downloader","/usr/bin/rapid-photo-downloader","/usr/share/pixmaps/rapid-photo-downloader.xpm"},
	{"Rawstudio","/usr/bin/rawstudio","/usr/share/pixmaps/rawstudio.xpm"},
	{"RawTherapee","rawtherapee","/usr/share/pixmaps/rawtherapee.xpm"},
	{"The GIMP","/usr/bin/gimp","/usr/share/pixmaps/gimp.xpm"},
	{"X Window Snapshot","xwd | xwud"},
}
Debian_menu["Debian_Applications_Network_Communication"] = {
	{"heirloom-mailx", "x-terminal-emulator -e ".."/usr/bin/heirloom-mailx"},
	{"Minicom", "x-terminal-emulator -e ".."/usr/bin/minicom"},
	{"Minicom (X11)","/usr/bin/xminicom"},
	{"Mutt", "x-terminal-emulator -e ".."/usr/bin/mutt","/usr/share/pixmaps/mutt.xpm"},
	{"Remmina","/usr/bin/remmina"},
	{"Telnet", "x-terminal-emulator -e ".."/usr/bin/telnet"},
	{"Xbiff","xbiff"},
}
Debian_menu["Debian_Applications_Network_File_Transfer"] = {
	{"qBittorrent","/usr/bin/qbittorrent","/usr/share/pixmaps/qbittorrent.xpm"},
}
Debian_menu["Debian_Applications_Network"] = {
	{ "Communication", Debian_menu["Debian_Applications_Network_Communication"] },
	{ "File Transfer", Debian_menu["Debian_Applications_Network_File_Transfer"] },
}
Debian_menu["Debian_Applications_Office"] = {
	{"LibreOffice Calc","/usr/bin/libreoffice --calc","/usr/share/icons/hicolor/32x32/apps/libreoffice-calc.xpm"},
	{"LibreOffice Impress","/usr/bin/libreoffice --impress","/usr/share/icons/hicolor/32x32/apps/libreoffice-impress.xpm"},
	{"LibreOffice Writer","/usr/bin/libreoffice --writer","/usr/share/icons/hicolor/32x32/apps/libreoffice-writer.xpm"},
}
Debian_menu["Debian_Applications_Programming"] = {
	{"DrRacket","/usr/bin/drracket","/usr/share/racket/collects/icons/mini-plt.xpm"},
	{"GDB", "x-terminal-emulator -e ".."/usr/bin/gdb"},
	{"jEdit","/usr/bin/jedit","/usr/share/pixmaps/jedit.xpm"},
	{"Meld","/usr/bin/meld"},
	{"Python (v2.7)", "x-terminal-emulator -e ".."/usr/bin/python2.7","/usr/share/pixmaps/python2.7.xpm"},
	{"Python (v3.2)", "x-terminal-emulator -e ".."/usr/bin/python3.2","/usr/share/pixmaps/python3.2.xpm"},
	{"qgit","/usr/bin/qgit"},
	{"Ruby (irb1.8)", "x-terminal-emulator -e ".."/usr/bin/irb1.8"},
	{"Ruby (irb1.9.1)", "x-terminal-emulator -e ".."/usr/bin/irb1.9.1"},
	{"Tclsh8.5", "x-terminal-emulator -e ".."/usr/bin/tclsh8.5"},
	{"TkWish8.5","x-terminal-emulator -e /usr/bin/wish8.5"},
}
Debian_menu["Debian_Applications_Science_Astronomy"] = {
	{"stellarium","/usr/bin/stellarium","/usr/share/pixmaps/stellarium.xpm"},
}
Debian_menu["Debian_Applications_Science_Geoscience"] = {
	{"Google Earth","/usr/bin/googleearth","/usr/share/pixmaps/googleearth.xpm"},
}
Debian_menu["Debian_Applications_Science_Mathematics"] = {
	{"Bc", "x-terminal-emulator -e ".."/usr/bin/bc"},
	{"Dc", "x-terminal-emulator -e ".."/usr/bin/dc"},
	{"GCalcTool","/usr/bin/gcalctool","/usr/share/pixmaps/gcalctool.xpm"},
	{"Gnuplot", "x-terminal-emulator -e ".."/usr/bin/gnuplot"},
	{"LibreOffice Math","/usr/bin/libreoffice --math","/usr/share/icons/hicolor/32x32/apps/libreoffice-math.xpm"},
	{"Xcalc","xcalc"},
}
Debian_menu["Debian_Applications_Science"] = {
	{ "Astronomy", Debian_menu["Debian_Applications_Science_Astronomy"] },
	{ "Geoscience", Debian_menu["Debian_Applications_Science_Geoscience"] },
	{ "Mathematics", Debian_menu["Debian_Applications_Science_Mathematics"] },
}
Debian_menu["Debian_Applications_Shells"] = {
	{"Bash", "x-terminal-emulator -e ".."/bin/bash --login"},
	{"Dash", "x-terminal-emulator -e ".."/bin/dash -i"},
	{"Sh", "x-terminal-emulator -e ".."/bin/sh --login"},
}
Debian_menu["Debian_Applications_Sound"] = {
	{"Audacity","/usr/bin/audacity","/usr/share/pixmaps/audacity32.xpm"},
	{"grecord (GNOME 2.0 Recorder)","/usr/bin/gnome-sound-recorder","/usr/share/pixmaps/gnome-grecord.xpm"},
	{"Last.fm","/usr/bin/lastfm","/usr/share/pixmaps/lastfm32.xpm"},
	{"pavumeter","/usr/bin/pavumeter"},
	{"Rhythmbox","/usr/bin/rhythmbox","/usr/share/pixmaps/rhythmbox-small.xpm"},
	{"TiMidity++","timidity -ia","/usr/share/pixmaps/timidity.xpm"},
}
Debian_menu["Debian_Applications_System_Administration"] = {
	{"DSL/PPPoE configuration tool", "x-terminal-emulator -e ".."/usr/sbin/pppoeconf","/usr/share/pixmaps/pppoeconf.xpm"},
	{"Editres","editres"},
	{"Gnome Control Center","/usr/bin/gnome-control-center",},
	{"GNOME Network Tool","/usr/bin/gnome-nettool","/usr/share/pixmaps/gnome-nettool.xpm"},
	{"pppconfig", "x-terminal-emulator -e ".."su-to-root -p root -c /usr/sbin/pppconfig"},
	{"Xclipboard","xclipboard"},
	{"Xfontsel","xfontsel"},
	{"Xkill","xkill"},
	{"Xrefresh","xrefresh"},
}
Debian_menu["Debian_Applications_System_Hardware"] = {
	{"Xvidtune","xvidtune"},
}
Debian_menu["Debian_Applications_System_Language_Environment"] = {
	{"Input Method Swicher", "x-terminal-emulator -e ".."/usr/bin/im-switch"},
}
Debian_menu["Debian_Applications_System_Monitoring"] = {
	{"BOINC Manager","/usr/bin/boincmgr"},
	{"bwm-ng", "x-terminal-emulator -e ".."/usr/bin/bwm-ng"},
	{"GNOME system monitor","/usr/bin/gnome-system-monitor"},
	{"htop", "x-terminal-emulator -e ".."/usr/bin/htop"},
	{"Pstree", "x-terminal-emulator -e ".."/usr/bin/pstree.x11","/usr/share/pixmaps/pstree16.xpm"},
	{"Top", "x-terminal-emulator -e ".."/usr/bin/top"},
	{"Xconsole","xconsole -file /dev/xconsole"},
	{"Xev","x-terminal-emulator -e xev"},
	{"Xload","xload"},
}
Debian_menu["Debian_Applications_System_Security"] = {
	{"Seahorse","/usr/bin/seahorse","/usr/share/pixmaps/seahorse.xpm"},
}
Debian_menu["Debian_Applications_System"] = {
	{ "Administration", Debian_menu["Debian_Applications_System_Administration"] },
	{ "Hardware", Debian_menu["Debian_Applications_System_Hardware"] },
	{ "Language Environment", Debian_menu["Debian_Applications_System_Language_Environment"] },
	{ "Monitoring", Debian_menu["Debian_Applications_System_Monitoring"] },
	{ "Security", Debian_menu["Debian_Applications_System_Security"] },
}
Debian_menu["Debian_Applications_Terminal_Emulators"] = {
	{"Gnome Terminal","/usr/bin/gnome-terminal","/usr/share/pixmaps/gnome-terminal.xpm"},
	{"XTerm","xterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
	{"X-Terminal as root (GKsu)","/usr/bin/gksu -u root /usr/bin/x-terminal-emulator","/usr/share/pixmaps/gksu-debian.xpm"},
	{"XTerm (Unicode)","uxterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
}
Debian_menu["Debian_Applications_Text"] = {
	{"Character map","/usr/bin/gucharmap"},
	{"Fortune","sh -c 'while /usr/games/fortune | col -x | xmessage -center -buttons OK:1,Another:0 -default OK -file - ; do :; done'"},
}
Debian_menu["Debian_Applications_Video"] = {
	{"VLC media player","/usr/bin/qvlc","/usr/share/icons/hicolor/32x32/apps/vlc.xpm"},
}
Debian_menu["Debian_Applications_Viewers"] = {
	{"comix","/usr/bin/comix"},
	{"digikam","/usr/bin/digikam"},
	{"Evince","/usr/bin/evince","/usr/share/pixmaps/evince.xpm"},
	{"Eye of GNOME","/usr/bin/eog","/usr/share/pixmaps/gnome-eog.xpm"},
	{"Xditview","xditview"},
}
Debian_menu["Debian_Applications"] = {
	{ "Accessibility", Debian_menu["Debian_Applications_Accessibility"] },
	{ "Editors", Debian_menu["Debian_Applications_Editors"] },
	{ "File Management", Debian_menu["Debian_Applications_File_Management"] },
	{ "Graphics", Debian_menu["Debian_Applications_Graphics"] },
	{ "Network", Debian_menu["Debian_Applications_Network"] },
	{ "Office", Debian_menu["Debian_Applications_Office"] },
	{ "Programming", Debian_menu["Debian_Applications_Programming"] },
	{ "Science", Debian_menu["Debian_Applications_Science"] },
	{ "Shells", Debian_menu["Debian_Applications_Shells"] },
	{ "Sound", Debian_menu["Debian_Applications_Sound"] },
	{ "System", Debian_menu["Debian_Applications_System"] },
	{ "Terminal Emulators", Debian_menu["Debian_Applications_Terminal_Emulators"] },
	{ "Text", Debian_menu["Debian_Applications_Text"] },
	{ "Video", Debian_menu["Debian_Applications_Video"] },
	{ "Viewers", Debian_menu["Debian_Applications_Viewers"] },
}
Debian_menu["Debian_Games_Action"] = {
	{"Teeworlds","/usr/games/teeworlds --quiet","/usr/share/pixmaps/teeworlds.xpm"},
	{"Ur-Quan Masters","uqm","/usr/share/games/uqm.xpm"},
}
Debian_menu["Debian_Games_Card"] = {
	{"Gnome FreeCell","/usr/games/sol --variation freecell","/usr/share/pixmaps/freecell.xpm"},
	{"Gnome Solitaire Games","/usr/games/sol","/usr/share/pixmaps/aisleriot.xpm"},
}
Debian_menu["Debian_Games_Strategy"] = {
	{"Battle for Wesnoth (1.10)","/usr/games/wesnoth-1.10-nolog","/usr/share/pixmaps/wesnoth-1.10-icon.xpm"},
}
Debian_menu["Debian_Games_Tools"] = {
	{"Battle for Wesnoth Editor (1.10)","/usr/games/wesnoth-1.10-nolog -e","/usr/share/pixmaps/wesnoth-1.10_editor-icon.xpm"},
}
Debian_menu["Debian_Games_Toys"] = {
	{"Oclock","oclock"},
	{"Xclock (analog)","xclock -analog"},
	{"Xclock (digital)","xclock -digital -update 1"},
	{"Xeyes","xeyes"},
	{"Xlogo","xlogo"},
}
Debian_menu["Debian_Games"] = {
	{ "Action", Debian_menu["Debian_Games_Action"] },
	{ "Card", Debian_menu["Debian_Games_Card"] },
	{ "Strategy", Debian_menu["Debian_Games_Strategy"] },
	{ "Tools", Debian_menu["Debian_Games_Tools"] },
	{ "Toys", Debian_menu["Debian_Games_Toys"] },
}
Debian_menu["Debian_Help"] = {
	{"Info", "x-terminal-emulator -e ".."info"},
	{"Xman","xman"},
	{"yelp","/usr/bin/yelp"},
}
Debian_menu["Debian"] = {
	{ "Applications", Debian_menu["Debian_Applications"] },
	{ "Games", Debian_menu["Debian_Games"] },
	{ "Help", Debian_menu["Debian_Help"] },
}
