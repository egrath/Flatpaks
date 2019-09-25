#!/bin/bash
flatpak-builder --repo=repo --force-clean --install-deps-from=flathub build com.github.joncampbell123.DOSBox-X.json
if [ $? -eq 0 ]; then
	flatpak build-bundle repo dosbox-x.flatpak com.github.joncampbell123.DOSBox-X 0.82.21
fi

