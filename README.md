# Nomacs Image viewer Flatpak build

**Build it**
```
flatpak-builder --force-clean --install-deps-from=flathub --keep-build-dirs build com.github.nomacs.json
```

**Test it**
```
flatpak-builder --run  build com.github.nomacs.json sh
nomacs
```

**Export to repository**
```
flatpak-builder --repo=repo --force-clean build com.github.nomacs.json
```

**Add repository**
```
flatpak remote-add --no-gpg-verify --user nomacs-repository repo
```

**Install from repository**
```
flatpak install --user --assumeyes nomacs-repository com.github.nomacs
```
... or use the software center if you prefer the graphical approach
