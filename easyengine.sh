#! /bin/bash

sudo echo -e "[user]\n\tname = EasyEngine\n\temail = root@easyengine.com" > ~/.gitconfig
wget -qO ee rt.cx/ee && sudo bash ee stable
sudo ee stack install
sudo ee site create easyengine.com --wpfc
sudo halt
