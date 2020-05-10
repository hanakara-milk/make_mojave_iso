#!/usr/bin/env bash
hdiutil create -o /tmp/mojave.cdr -size 8500m -layout SPUD -fs HFS+J
hdiutil attach /tmp/mojave.cdr.dmg -noverify -mountpoint /Volumes/install_build

sudo /Applications/Install\ macOS\ Mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/install_build --nointeraction
hdiutil detach /Volumes/Install\ macOS\ Mojave/
hdiutil convert /tmp/mojave.cdr.dmg -format UDTO -o /tmp/mojave.iso

mv /tmp/mojave.iso.cdr ~/Desktop/mojave.iso
rm /tmp/mojave.cdr.dmg
