#!/bin/bash

set -eux

# Init dotfiles and chezmoi
if [ "$(type chezmoi)" == "chezmoi not found" ]; then
  sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply https://github.com/lazypower/homies.git
fi

# Install brew apps
./brew-setup.sh
# Install flatpak apps
./flatpak-setup.sh


