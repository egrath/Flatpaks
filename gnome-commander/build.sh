flatpak-builder --force-clean --repo=repo build io.github.gcmd.json
if [ $? -eq 0 ]; then
    flatpak build-bundle repo gnome-commander.flatpak io.github.gcmd 1.14.3
fi
