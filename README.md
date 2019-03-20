BUILDING
========

Build:
    flatpak-builder "build" "com.github.joncampbell123.DOSBox-X.json" --force-clean --install-deps-from="flathub"

Optionally, if something goes wrong, you can enter a shell in the build environment:
    flatpak-builder --run "build" "com.github.joncampbell123.DOSBox-X.json" "sh"

Test run:
    flatpak-builder --run "build" "com.github.joncampbell123.DOSBox-X.json" dosbox-x


INSTALLING
==========

Export to local repository:
    flatpak-builder --repo="repo" --force-clean "build" "com.github.joncampbell123.DOSBox-X.json"


Add local repository to flatpak repository database:
    flatpak remote-add --user --no-gpg-verify "dosbox-x" "repo"

Install:
    flatpak install --user dosbox-x com.github.joncampbell123.DOSBox-X

DIRECTORIES AND PERMISSIONS
===========================

DOSBox-X uses ~/.dosbox as it's main directory and ~/dosbox.conf for storing
it's configuration per default. As the flatpak runs sandboxed, these are 
actually located in ~/.var/app/com.github.joncampbell123.DOSBox-X.

If you want to change this behavior and allow DOSBox-X to access your regular
home directory, you can manually override the permissions with:

    flatpak override --user --filesystem=home com.github.joncampbell123.DOSBox-X

