#!/bin/bash

set -eu

function fpi {
  flatpak install $1
}

# Gradia screenshot tool
fpi be.alexandervanhee.gradia
# Bambulab Slicer
fpi com.bambulab.BambuStudio
# Butler HomeAssistant utility
fpi com.cassidyjames.butler
# Discord chat
fpi com.discordapp.Discord
#SyncThingy file syncer
fpi com.github.zocker_160.SyncThingy
# OBS Studio
fpi com.obsproject.Studio
# Bottles
fpi com.usebottles.bottles
# Steam
fpi com.valvesoftware.Steam
# Dino XMPP
fpi im.dino.Dino
# Planify TODO app
fpi io.github.alainm23.planify
# Stimulator - desktop suspend preventer
fpi io.github.sigmasd.stimulator
# Smile - emoji keyboard
fpi it.mijorus.smile
# Obsidian markdown
fpi md.obsidian.Obsidian
# Deskfow virtual KVM
fpi org.deskflow.deskflow
# Localsend - airdrop alternative
fpi org.localsend.localsend_app
# Parabolic - Tube fetcher gui
fpi org.nickvision.tubeconverter
