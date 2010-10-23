#!/bin/sh
APP_INSTALL_DIR=/usr/share/applications/
DESKTOP=/home/user/Desktop/
cp ${APP_INSTALL_DIR}/{emacs22,emacs23,gedit,gnome-terminal,iceweasel,gvim}.desktop ${DESKTOP}

IMAGE_FILE=/home/user/wallpapers/nari/B1920x1200.jpg
update-alternatives --install /usr/share/images/desktop-base/desktop-background \
                    desktop-background $IMAGE_FILE 200
update-alternatives --set desktop-background $IMAGE_FILE
