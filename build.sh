#!/bin/bash

ARCH=x86_64
if [ $# -ge 1 ]; then
	ARCH=${1}
	echo registering qemu-user-static
	sudo podman run --rm --privileged multiarch/qemu-user-static --reset -p yes
fi

echo Building for architecture: ${ARCH}

RELEASE=$(cat com.github.joncampbell123.DOSBox-X.json | grep "branch" | awk -F '\"' '{print $4}')

git submodule init
git submodule update
#git submodule update --remote --merge

# build 
COMMAND="flatpak-builder --arch=${ARCH} --repo=repo --force-clean --install-deps-from=flathub build_${ARCH} com.github.joncampbell123.DOSBox-X.json"

echo running: ${COMMAND}
${COMMAND}

# pack everything up in a distributable file
if [ $? -eq 0 ]; then
	COMMAND="flatpak build-bundle --arch=${ARCH} repo dosbox-x_${ARCH}.flatpak com.github.joncampbell123.DOSBox-X ${RELEASE}"
	echo running: ${COMMAND}
	${COMMAND}
fi

