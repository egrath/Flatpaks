# Building #
```
flatpak-builder --force-clean --install-deps-from=flathub --repo=repo build com.gitlab.pdftk-java.json
flatpak build-bundle repo pdftk.flatpak com.gitlab.pdftk-java master
```

# Installing #
```
flatpak install --assumeyes --user pdftk.flatpak
```

