# Midnight Commander Flatpak

**Building**
```
flatpak-builder --force-clean build org.midnightcommander.mc.json
```

**Export to Repository**
```
flatpak-builder --repo="repo" --force-clean build org.midnightcommander.mc.json
```

**Add Repository**
```
flatpak remote-add --no-gpg-verify --user mc-repository repo
```

**Install**
```
flatpak install --user mc-repository org.midnightcommander.mc
```

**Usage**
I highly recommend to add the following two commands to your profile:
```
export TERM=xterm
alias mc="flatpak run org.midnightcommander.mc"
```
This way, you get:
1. Running Midnight Commander with "mc"
2. Having a nice ASCII User interface

