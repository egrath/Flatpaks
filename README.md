# Logisim Evolution Flatpak
![Screenshot](https://raw.githubusercontent.com/egrath/logisim-flatpak/master/logisim-screenshot-01.jpg)

This serves two purposes:
- Having Logisim-Evolution available as a Flatpak
- Having an example of how to package a precompiled Java-based application with integrated runtime as a flatpak

**Building**
```
flatpak-builder --force-clean --keep-build-dirs build com.github.redsheigh.logisim-evolution.json
```

**Exporting to Repository**
```
flatpak-builder --repo=repo --force-clean build com.github.redsheigh.logisim-evolution.json
```

**Adding Repository**
```
flatpak remote-add --user --no-gpg-verify logisim-repository repo
```

**Installing**
```
flatpak install --user logisim-repository com.github.redsheigh.logisim-evolution
```

