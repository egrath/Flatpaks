#!/bin/bash
flatpak-builder build --force-clean --install-deps-from=flathub --repo=repo com.github.hneemann.digital.json
if [ $? -eq 0 ]; then
    flatpak build-bundle repo digital.flatpak com.github.hneemann.digital 0.23
fi

