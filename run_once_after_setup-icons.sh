#!/bin/bash

#steam tray icon
rm /home/cch/.local/share/icons/Tela-dracula/*/panel/steam_tray_mono.svg

#lutris icon
ln -sf ~/.local/icons/lutris.svg ~/.local/share/icons/Tela-dracula/scalable/apps/lutris.svg

#executable icon
ln -sf ~/.local/icons/application-default-icon.svg ~/.local/share/icons/Tela-dracula/scalable/mimetypes/application-x-executable.svg

#qbittorent icon
ln -sf ~/.local/icons/qbittorrent.svg ~/.local/share/icons/Tela-dracula/scalable/apps/qbittorrent.svg
