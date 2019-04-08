# BUILDING #

**Build:**

    flatpak-builder "build" "com.github.jeija.gtkterm.json" --force-clean --install-deps-from="flathub"

Optionally, if something goes wrong, you can enter a shell in the build environment:

    flatpak-builder --run "build" "com.github.jeija.gtkterm.json" "sh"

**Test run:**

    flatpak-builder --run "build" "com.github.jeija.gtkterm.json" gtkterm


# INSTALLING #

**Export to local repository:**

    flatpak-builder --repo="repo" --force-clean "build" "com.github.jeija.gtkterm.json"


**Add local repository to flatpak repository database:**

    flatpak remote-add --user --no-gpg-verify "gtkterm" "repo"

**Install:**

    flatpak install --user gtkterm com.github.jeija.gtkterm

# DIRECTORIES AND PERMISSIONS #

GTKTerm stores it's configuration in ~/.gtktermrc which is mapped to the host filesystem
