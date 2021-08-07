#!/bin/bash

mkdir ~/.WineApps
mkdir ~/.WineApps/Paladium

zenity --info --text="Please set the windows version to Windows 7 then Apply and OK"

WINEPREFIX=~/.WineApps/Paladium winecfg

curl -L "https://drive.google.com/uc?export=download&id=1K7BxDSuCwyd-G-awdd5Rctc8fA4PDpjm" > PaladiumLauncher.tar.xz

curl -L "https://drive.google.com/uc?export=download&id=1nZFN9a7qHI7vg3UiVE1wX_BJKGBpJX-3" > Assets.tar.xz

tar -xf PaladiumLauncher.tar.xz
rm -rf PaladiumLauncher.tar.xz
mv Paladium\ Launcher ~/.WineApps/Paladium/drive_c
rm -rf Paladium\ Launcher
tar -xf Assets.tar.xz
rm -rf Assets.tar.xz
wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
WINEPREFIX=~/.WineApps/Paladium winetricks d3dcompiler_47 d3dx11_43

mv launcher.sh ~/.WineApps/Paladium/drive_c
mv Paladium.svg ~/.local/share/icons
mv Paladium.desktop ~/.local/share/applications

rm -rf winetricks
rm -rf winetricks.1
zenity --info --text="Installation finished, Have fun with Paladium ! (You might have some low framrate when starting the game let it for like a minute and you'll be fine. Take a little long to load too)"
