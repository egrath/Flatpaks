# Hexchat Flatpak

![Screenshot](https://raw.githubusercontent.com/egrath/hexchat-flatpak/master/hexchat_screenshot_01.jpg)

**Build**
```
flatpak-builder --force-clean --install-deps-from=flathub build com.github.hexchat.json
```

**Export to Repository**
```
flatpak-builder --force-clean --repo="repo" build com.github.hexchat.json
```

**Add Repository**
```
flatpak remote-add --user --no-gpg-verify hexchat-repository repo
```

**Install**
```
flatpak install --user hexchat-repository com.github.hexchat
```

**Building a .flatpak for distribution**
```
flatpak build-bundle repo hexchat-2-14-2.flatpak com.github.hexchat 2.14.2
```

