#!/bin/bash

git submodule init
git submodule update
flatpak-builder --force-clean --install-deps-from=flathub --repo=repo build com.github.jeija.gtkterm.json
if [ $? -eq 0 ]; then 
    flatpak build-bundle repo gtkterm.flatpak com.github.jeija.gtkterm master
fi

