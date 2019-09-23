# bsnes Emulator #

This is a Flatpak build of the famous bsnes Super Nintendo / Super Famicom Emulator.

Developers site: https://github.com/byuu/bsnes

## Dependencies ##
```
org.gnome.Platform//3.30
org.gnome.Sdk//3.30
```

## Build ##
```
./build.sh
```

this will yield a bsnes.flatpak file, which can be installed with:

```
flatpak install --user bsnes.flatpak
```

## Running ##

If you intend to use Quark-Shaders, put them into

```
~/.config/bsnes/shaders
```
