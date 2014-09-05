#! /bin/bash


function myecho()
{
	echo =========================================================	
}

sudo echo -e "[user]\n\tname = EasyEngine\n\temail = root@easyengine.com" > ~/.gitconfig 

myecho

wget -qO ee rt.cx/ee && sudo bash ee stable || exit 1

myecho

sudo ee stack install || exit 1

myecho

sudo ee site create easyengine.com --wpfc || exit 1

myecho

sudo halt
