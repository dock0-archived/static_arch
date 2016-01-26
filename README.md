dock0/static_arch
=======

[![Automated Build](http://img.shields.io/badge/automated-build-green.svg)](https://hub.docker.com/r/dock0/static_arch/)
[![Build Status](https://img.shields.io/circleci/project/dock0/static_arch.svg)](https://circleci.com/gh/dock0/static_arch)
[![MIT Licensed](http://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)

A minimal Arch container with the [amylum](https://github.com/amylum/repo) repo added, built statically with [musl](http://www.musl-libc.org/)

## Usage

To build a new image, run `make -f MetaMakefil`. This launches the docker build container and builds a new image.

To start a shell in the build environment for manual actions, run `make manual`.

This image has pacman keys initialized.

## License

The scripts in this repo are released under the MIT License. See the bundled LICENSE file for details. The packages and other content stored in root.tar.xz retains its original licenses.

