#!/bin/bash
flatpak-builder build --repo=repo --force-clean --install-deps-from=flathub com.github.ioquake.ioq3.json
if [ $? -eq 0 ]; then
	flatpak build-bundle repo ioquake3.flatpak com.github.ioquake.ioq3 master
fi

