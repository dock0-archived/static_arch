#!/usr/bin/env bash

set -euo pipefail

docker run -i new pacman -S --noconfirm ripgrep-amylum
