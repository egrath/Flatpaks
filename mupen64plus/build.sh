#!/bin/bash

git submodule init
git submodule update

flatpak-builder build --repo=repo --force-clean --install-deps-from=flathub com.github.mupen64plus.json
echo Building bundle ...
if [ $? -eq 0 ]; then
    flatpak build-bundle repo mupen64plus.flatpak com.github.mupen64plus 2.5.9
fi

