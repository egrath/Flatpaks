# GETTING #

```
git clone https://github.com/egrath/dosbox-x-flatpak.git
git submodule init
git submodule update
```

# BUILDING #

**Build:**

```
flatpak-builder "build" "com.github.joncampbell123.DOSBox-X.json" --force-clean --install-deps-from="flathub"
```

Optionally, if something goes wrong, you can enter a shell in the build environment:

```
flatpak-builder --run "build" "com.github.joncampbell123.DOSBox-X.json" "sh"
```

**Test run:**

```
flatpak-builder --run "build" "com.github.joncampbell123.DOSBox-X.json" dosbox-x
```

# INSTALLING #

**Export to local repository:**

```
flatpak-builder --repo="repo" --force-clean "build" "com.github.joncampbell123.DOSBox-X.json"
```


**Add local repository to flatpak repository database:**

```
flatpak remote-add --user --no-gpg-verify "dosbox-x" "repo"
```

**Install:**

```
flatpak install --user dosbox-x com.github.joncampbell123.DOSBox-X
```

**Build Bundle:**

If you want to create a bundle for distribution:

```
flatpak build-bundle repo dosbox_0_82_18.flatpak com.github.joncampbell123.DOSBox-X 0.82.18
```

# DIRECTORIES AND PERMISSIONS #

DOSBox-X uses ~/.dosbox as it's main directory and ~/dosbox.conf for storing
it's configuration per default. As the flatpak runs sandboxed, these are 
actually located in ~/.var/app/com.github.joncampbell123.DOSBox-X.

If you want to change this behavior and allow DOSBox-X to access your regular
home directory, you can manually override the permissions with:

    flatpak override --user --filesystem=home com.github.joncampbell123.DOSBox-X

# CONFIGURATION #
If you want to write a dosbox.conf with default settings to ~/dosbox.conf,
start up DOSBox-X, then enter

    config -all -wc dosbox.conf
    
To edit the file, open a Shell inside the sandbox and edit it with nano:

    flatpak run --command=sh com.github.johncampbell123.DOSBox-X
    nano ~/dosbox.conf

# SAMPLE CONFIGURATION #

This is my personal configuration used to run most of my favorite old DOS games and even Windows 95

```
[dosbox]
machine=svga_s3
vmemsizekb=4
memsize=64

[sdl]
output=openglnb
fullscreen=false
fulldouble=true
fullresolution=1920x1080
windowresolution=1280x960
usescancodes=true
autolock=true

[render]
scaler=normal2x
aspect=true

[cpu]
# matches pentium 133 mhz
cputype=pentium
cycles=fixed 72000
apmbios=true

[ne2000]
ne2000=true
nicbase=300
nicirq=3
#realnic=list
realnic=3

[mixer] 
nosound=false 
swapstereo=false 
rate=44100 
blocksize=1024 
prebuffer=12 

[sblaster] 
sbtype=sb16
sbbase=220 
irq=7
dma=1 
hdma=3 
sbmixer=true 
oplmode=auto 
oplemu=default 
oplrate=44100 
hardwarebase=220 

[dos]
xms=true
ems=true
umb=true
keyboardlayout=de

[pci]
voodoo=opengl

[autoexec] 
#imgmount 2 c:\temp\win95\win95.img -fs none -t hdd -size 512,63,16,60900
#imgmount 0 C:\temp\win95\boot95.img -fs none -t floppy
#boot -l c
```
