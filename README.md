# Florian's Container Linux (WIP) based on Garden Linux

Example for building a custom image based on [project "Garden Linux"](https://github.com/gardenlinux/gardenlinux)

This repository contains the Garden Linux repo as a git submodule, so it has to be cloned using `git clone --recurse-submodules https://github.com/fwilhe/florians-container-linux`

It contains two unique _features_:

`rootlessPodman` sets up [podman](https://podman.io) in a way that it can be used by a non-root user.

`lima` enables the resulting image to be used with [lima-vm](https://lima-vm.io).

## Building

The `do-build.sh` script wraps the process of building the image and creating a `lima-manifest.yaml` file so the image can easily be used to create a vm with lima.
