# Mupen64 Flatpak

### What is it?

A flatpak build of mupen64plus, including the following plugins and launchers/frontends

* mupen64plus
* mupen64plus-gui 
* mupen64plus-qt
* gliden64

### What can it be used for?

Playing N64 games you legally own on your Desktop

### Where does it run?

Should run on all Flatpak compatible Linux distributions, but has only been tested on Endless OS

### How to install?

Grab the flatpak file from the releases section

## How to configure?

mupen64 uses some configuration files which are located under:

```
~/.var/app/com.github.mupen64plus/config/mupen64plus
```

### Different Launchers

By default when you run mupen64plus, it will use the launcher "mupen64plus-qt". If you want "mupen64plus-gui" (which is a frontend), you have to run:

```
flatpak run --command=mupen64plus-gui com.github.mupen64plus
```

### How to build?

Pull the repository and run 
```
./build.sh
```

### How does it look like?

![Screenshot](https://github.com/egrath/mupen64plus-flatpak/raw/master/screenshot.png)
![Screenshot2](https://github.com/egrath/mupen64plus-flatpak/raw/master/screenshot2.png)

