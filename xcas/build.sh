#!/bin/bash


NAME=fr.ujfgrenoble.xcas
RELEASE=$(cat ${NAME}.json | grep "branch" | awk -F '\"' '{print $4}')

flatpak-builder --repo=repo --force-clean --install-deps-from=flathub build ${NAME}.json

if [ $? -eq 0 ]; then
	flatpak build-bundle repo xcas.flatpak ${NAME} ${RELEASE}
fi

