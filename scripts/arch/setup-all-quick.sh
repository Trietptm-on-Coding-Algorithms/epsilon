#!/bin/bash

sudo pacman --noconfirm -Sy python python-pip python-virtualenv python2 gcc mono wget jdk7-openjdk jre7-openjdk fpc perl octave ruby autoconf autoconf2.13 libpqxx

wget https://aur.archlinux.org/packages/ja/jailkit/jailkit.tar.gz
tar xvf jailkit.tar.gz
cd jailkit
makepkg
sudo pacman --noconfirm -U jailkit-*.pkg.tar.xz
cd ..
rm -rf jailkit jailkit.tar.gz

wget https://aur.archlinux.org/packages/mo/mozjs/mozjs.tar.gz
tar xvf mozjs.tar.gz
cd mozjs
makepkg
sudo pacman --noconfirm -U mozjs-*.pkg.tar.xz
cd ..
rm -rf mozjs mozjs.tar.gz

