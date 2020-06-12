# BUILDING #

```
flatpak-builder --repo="repo" "build" "com.github.jeija.gtkterm.json" --force-clean --install-deps-from="flathub"
flatpak build-bundle repo gtkterm.flatpak com.github.jeija.gtkterm 0.99.7
```

# INSTALLING #
```
flatpak install gtkterm.flatpak
```
