#!/bin/bash

mkdir ~/.WineApps
mkdir ~/.WineApps/Paladium

WINEPREFIX=~/.WineApps/Paladium wineboot

curl -L "https://getlemonade.org/PublicFiles/paladium-group.tar.xz" > paladium-group.tar.xz

curl -L "https://getlemonade.org/PublicFiles/Assets.tar.xz" > Assets.tar.xz

tar -xf paladium-group.tar.xz
rm -rf paladium-group.tar.xz
mv paladium-group ~/.WineApps/Paladium/drive_c
rm -rf paladium-group
tar -xf Assets.tar.xz
rm -rf Assets.tar.xz
chmod +x launcher.sh
wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
WINEPREFIX=~/.WineApps/Paladium ./winetricks d3dcompiler_47 d3dx11_43 win7

mv launcher.sh ~/.WineApps/Paladium/drive_c
mv Paladium.svg ~/.local/share/icons
mv Paladium.desktop ~/.local/share/applications

rm -rf winetricks
rm -rf winetricks.1
