# What is it #

A simple wrapper for running Microsoft's Windows File Manager under Wine as a Flatpak.

Example, running WinFile and 7-Zip:

![Screenshot](https://raw.githubusercontent.com/egrath/winfile-flatpak/master/com.microsoft.winfile.screenshot.png)

# Installing #

Add the needed repository:

```
flatpak remote-add --if-not-exists winepak https://dl.winepak.org/repo/winepak.flatpakrepo
```

Install the needed Platform:

```
flatpak install --assumeyes winepak org.winepak.Platform.Wine//3.10-staging
flatpak install --assumeyes winepak org.winepak.Platform.Wine.Compat32//3.10-staging
flatpak install --assumeyes winepak org.winepak.Platform.Extension.d3dx9
flatpak install --assumeyes winepak org.winepak.Platform.Extension.corefonts
```

Clone this repository, build it and install it:
```
flatpak-builder --arch=i386 --force-clean --install-deps-from=flathub --install-deps-from=winepak --repo=repo build com.microsoft.winfile.json
flatpak build-bundle --arch=i386 repo winfile.flatpak com.microsoft.winfile master
flatpak install --user --assumeyes winfile.flatpak
```

# Use it #

If you run the wrapper, you get the classic Windows File Manager. Simply point it to some applications you want to run. It's also possible to run installers.

Known limitations:

  - You won't get any icons for installed applications, you need to run them directly from their executable.
  - Currently only 32 bit applications are supported

# FAQ # 
Q: How to run winecfg?
```
flatpak run --command=winecfg com.microsoft.winfile
```

Q: How to run winetricks?
```
flatpak run --command=winetricks com.microsoft.winfile
```

Q: How to enable font smoothing?
```
flatpak run --command=sh com.microsoft.winfile
winetricks settings fontsmooth=rgb
```

Q: I dislike the Microsoft WinFile, can i use Wine's explorer?
```
flatpak run --command=wine com.microsoft.winfile explorer
```

Q: Can i directly run installed applications?
```
flatpak run --command="wine" com.microsoft.winfile "C:/Program Files/Mathomir/Mathomir.exe"
```
