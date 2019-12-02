#!/bin/bash
flatpak-builder build --repo=repo --force-clean --install-deps-from=flathub com.github.nomacs.json
if [ $? -eq 0 ]; then
	flatpak build-bundle repo nomacs312.flatpak com.github.nomacs 3.12
fi

