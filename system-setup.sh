#!/bin/bash

set -eu

# Init dotfiles and chezmoi
if [ "$(type chezmoi)" == "chezmoi not found" ]; then
  sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply https://github.com/lazypower/homies.git
fi

# Install brew apps
brew tap hashicorp/tap
xargs brew install < brew-packages.txt

# Install flatpak apps
cat flatpaks.json | jq '. | sort_by(.description)' | jq -r '.[].package' | xargs flatpak install -y

# Language Models
if [ "$(type ramalama)" != "ramalama not found" ]; then
  # Note the rl alias comes from a bluefin built-in. Not portable
  models=$(cat llms.json | jq '. | sort_by(.description)' | jq -r '.[].model')
  for m in ${models}; do
    ramalama pull "${m}"
  done
fi

