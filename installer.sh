#!/bin/bash

mkdir ~/.WineApps
mkdir ~/.WineApps/Paladium

WINEPREFIX=~/.WineApps/Paladium wineboot

curl -L "https://drive.google.com/uc?export=download&id=1K7BxDSuCwyd-G-awdd5Rctc8fA4PDpjm" > PaladiumLauncher.tar.xz

curl -L "https://drive.google.com/uc?export=download&id=17QeWUUne6VijAu6V-m-4BRhmO3mkp08r" > Assets.tar.xz

tar -xf PaladiumLauncher.tar.xz
rm -rf PaladiumLauncher.tar.xz
mv Paladium\ Launcher ~/.WineApps/Paladium/drive_c
rm -rf Paladium\ Launcher
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
