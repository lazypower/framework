#!/bin/bash

set -eu

brew update
brew tap hashicorp/tap
xargs brew install < brew-packages.txt
