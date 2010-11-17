#!/bin/sh
# Last updated to Ubuntu 10.10

apt-get purge cheese evolution gnome-games-common transmission-gtk

# Aptitude cleanup
apt-get autoremove
