#!/bin/bash

NAME=$(cat *.json | grep "app-id" | awk -F '\"' '{print $4}')
RELEASE=$(cat ${NAME}.json | grep "branch" | awk -F '\"' '{print $4}')

flatpak-builder --repo=repo --force-clean --install-deps-from=flathub build ${NAME}.json

if [ $? -eq 0 ]; then
	flatpak build-bundle repo ${NAME}.flatpak ${NAME} ${RELEASE}
fi

