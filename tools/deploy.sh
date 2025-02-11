#!/bin/bash

#Run this in the repo root after compiling
#First arg is path to where you want to deploy
#creates a work tree free of everything except what's necessary to run the game

#second arg is working directory if necessary
if [[ $# -eq 2 ]] ; then
  cd $2
fi

mkdir -p \
    $1/_maps \
    $1/code \
    $1/config \
    $1/goon \
    $1/html \
    $1/icons \
    $1/interface \
    $1/modular \
    $1/modular_azurepeak \
    $1/modular_causticcove \
    $1/modular_hearthstone \
    $1/sound \
    $1/strings \
    $1/tgui

if [ -d ".git" ]; then
  mkdir -p $1/.git/logs
  cp -r .git/logs/* $1/.git/logs/
fi

cp roguetown.dmb roguetown.rsc $1/
cp -r _maps/* $1/_maps/
cp -r code/* $1/code/
cp -r config/* $1/config/
cp -r goon/* $1/goon/
cp -r html/* $1/html/
cp -r icons/* $1/icons/
cp -r interface/* $1/interface/
cp -r modular/* $1/modular/
cp -r modular_azurepeak/* $1/modular_azurepeak/
cp -r modular_causticcove/* $1/modular_causticcove/
cp -r modular_hearthstone/* $1/modular_hearthstone/
cp -r sound/* $1/sound/
cp -r strings/* $1/strings/
cp -r tgui/* $1/tgui/

#remove .dm files from _maps

#this regrettably doesn't work with windows find
#find $1/_maps -name "*.dm" -type f -delete

#dlls on windows
if [ "$(uname -o)" = "Msys" ]; then
	cp ./*.dll $1/
fi
