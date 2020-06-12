# Getting #
```
git clone https://github.com/egrath/scantailor-universal-flatpak.git
```

# Building #
```
flatpak-builder --repo="repo" --install-deps-from=flathub --force-clean build com.github.trufanovnok.scantailor.json
```

# Building a distributable file #
```
flatpak build-bundle repo scantailor-universal-0.2.6.flatpak com.github.trufanovnok.scantailor 0.2.6
```

# Installing a distributable file #
```
flatpak install --user --assumeyes scantailor-universal-0.2.6.flatpak
```

