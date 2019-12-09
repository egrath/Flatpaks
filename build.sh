#!/bin/bash

BASE=com.github.trufanovnok.scantailor

MANIFEST=${BASE}.json
FLATPAK=${BASE}.flatpak
RELEASE=$(cat ${MANIFEST} | grep "branch" | awk -F '\"' '{print $4}')

flatpak-builder --repo=repo --force-clean --install-deps-from=flathub build ${MANIFEST}

if [ $? -eq 0 ]; then
	flatpak build-bundle repo ${FLATPAK} ${BASE} ${RELEASE}
fi

