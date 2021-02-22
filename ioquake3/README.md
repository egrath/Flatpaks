# ioquake3
This is a Flatpak build of the ioquake3 engine.
![Screenshot](https://raw.githubusercontent.com/egrath/ioquake3-flatpak/master/screenshot01.jpg)

### What is it exactly?
ioquake3 is the continuation of the idtech3 engine which has been released
long time ago. idtech3 is the engine used to power Quake III Arena, so
essentially, ioquake3 allows you to play Q3A on your PC

### How to run it?
Download the flatpak from the release section and install it. Then take
your original Q3A CD-ROM and copy over all files from it's `baseq3` folder
to `~/.q3a/baseq3`

You need at least `pak0.pk3` in it.

Then start ioquake3 from it's shortcut.

### How to set a custom resolution?
Open up the terminal by pressing Shift-ESC, then write:
```
/r_mode -1
/r_customwidth 1920
/r_customheight 1080
```

### How to build the flatpak by myself
Clone this repository, then run:
```
./build.sh
```
This will build everything, put it in the right place and produce a 
flatpak file.
