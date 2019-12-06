#!/bin/bash

RELEASE=$(cat com.github.joncampbell123.DOSBox-X.json | grep "branch" | awk -F '\"' '{print $4}')

git submodule init
git submodule update
#git submodule update --remote --merge

flatpak-builder --repo=repo --force-clean --install-deps-from=flathub build com.github.joncampbell123.DOSBox-X.json

if [ $? -eq 0 ]; then
	flatpak build-bundle repo dosbox-x.flatpak com.github.joncampbell123.DOSBox-X ${RELEASE}
fi

