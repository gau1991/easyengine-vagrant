#! /bin/bash

alias eeend="echo =========================================================================================================================="
sudo echo -e "[user]\n\tname = EasyEngine\n\temail = root@easyengine.com" > ~/.gitconfig
eeend
wget -qO ee rt.cx/ee && sudo bash ee stable
eeend
sudo ee stack install
eeend
sudo ee site create easyengine.com --wpfc
eeend
sudo halt
