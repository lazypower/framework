#!/bin/bash

set -eux

# Init dotfiles and chezmoi
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply https://github.com/lazypower/homies.git

# Install brew apps
./brew-setup.sh
# Install flatpak apps
./flatpak-setup.sh


