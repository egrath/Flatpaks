#!/bin/bash
#
# ARM build:
# ==========
#
# pass "arm" on the command line to build arm version
# you need the following prequisites:
#     apt-get install qemu-system-arm qemu-user-static 
#     flatpak install -y --arch=arm org.freedesktop.Sdk/arm/19.08
#     systemctl restart systemd-binfmt.service
#

ARCH=x86_64
if [ $# -ge 1 ]; then
	ARCH=${1}
fi

echo Building for architecture: ${ARCH}

RELEASE=$(cat com.github.joncampbell123.DOSBox-X.json | grep "branch" | awk -F '\"' '{print $4}')

git submodule init
git submodule update
#git submodule update --remote --merge

# build 
flatpak-builder --arch=${ARCH} --repo=repo --force-clean --install-deps-from=flathub build_${ARCH} com.github.joncampbell123.DOSBox-X.json

# pack everything up in a distributable file
if [ $? -eq 0 ]; then
	flatpak build-bundle --arch=${ARCH} repo dosbox-x.flatpak com.github.joncampbell123.DOSBox-X ${RELEASE}
fi

