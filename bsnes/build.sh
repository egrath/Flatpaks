#!/bin/bash
echo Updating submodules ...
git submodule update

echo Building ...
flatpak-builder --repo=repo --force-clean --install-deps-from=flathub build com.github.byuu.bsnes.json
if [ $? -eq 0 ]; then
    flatpak build-bundle repo bsnes.flatpak com.github.byuu.bsnes v110-master
fi

