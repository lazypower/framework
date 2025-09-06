#!/bin/bash

set -eux

# Init dotfiles and chezmoi
if [ "$(type chezmoi)" == "chezmoi not found" ]; then
  sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply https://github.com/lazypower/homies.git
fi

# Install brew apps
brew tap hashicorp/tap
xargs brew install < brew-packages.txt

# Install flatpak apps
cat flatpaks.json | jq '. | sort_by(.description)' | jq -r '.[].package' | xargs flatpak install

