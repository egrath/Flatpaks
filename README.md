# Ultimaker Cura Flatpak

This is a Flatpak wrapper for running the AppImage build provided by Ultimaker under supported x64 Operating Systems like Endless.

![Screenshot](https://raw.githubusercontent.com/egrath/cura-flatpak/master/cura_screenshot_01.jpg)

## Instructions

There are two ways of running Ultimaker as a Flatpak:
1. Download the .flatpak from the Releases section and install it
2. Build the wrapper by yourself

**Building**
```
flatpak-builder --force-clean build com.github.ultimaker.cura.json
```

**Testing**
```
flatpak-builder --force-clean --run build com.github.ultimaker.cura.json sh
cura.sh
```

**Deploying to a repository and installing it**
```
flatpak-builder --repo=repo --force-clean build com.github.ultimaker.cura.json
flatpak remote-add --user --no-gpg-verify cura-repository repo
flatpak install --user --assumeyes cura-repository com.github.ultimaker.cura
```

## Bundle

This step is not necessary regulary, it will create the .flatpak for offline deployment
```
flatpak build-bundle repo cura-4.flatpak com.github.ultimaker.cura 4.0.0
```
The resulting .flatpak file can be installed with:
```
flatpak install --user cura-4.flatpak
```

## FAQ
- Original sources: https://github.com/Ultimaker/Cura
