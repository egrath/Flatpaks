# GETTING #

    git clone https://github.com/egrath/freedroid-flatpak.git
    git submodule init
    git submodule update


# BUILDING #

**Build:**

    flatpak-builder "build" "org.freedroid.classic.json" --force-clean --install-deps-from="flathub"

Optionally, if something goes wrong, you can enter a shell in the build environment:

    flatpak-builder --run "build" "org.freedroid.classic.json" "sh"

**Test run:**

    flatpak-builder --run "build" "org.freedroid.classic.json" freedroid


# INSTALLING #

**Export to local repository:**

    flatpak-builder --repo="repo" --force-clean "build" "org.freedroid.classic.json"

**Add local repository to flatpak repository database:**

    flatpak remote-add --user --no-gpg-verify "freedroid" "repo"

**Install:**

    flatpak install --user freedroid org.freedroid.classic


