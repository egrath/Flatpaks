# What is it? #
It's a flatpak build of XCAS, a computer algebra system: https://www-fourier.ujf-grenoble.fr/~parisse/giac.html

![Screenshot](https://raw.githubusercontent.com/egrath/xcas-flatpak/master/fr.ujfgrenoble.xcas.png)

# Getting the sources #

git clone https://github.com/egrath/xcas-flatpak.git

# Building it #

The command below will build the application and export it to the local repository directory "repo"

```
flatpak-builder --repo=repo --force-clean --install-deps-from=flathub build fr.ujfgrenoble.xcas.json
```

# Creating the .flatpak #

If you want to distribute the application as a .flatpak file, use the following command to build it:

```
flatpak build-bundle repo xcas-15.flatpak fr.ujfgrenoble.xcas 1.5
```

to install the file:

```
flatpak install --user --assumeyes xcas-15.flatpak
```

