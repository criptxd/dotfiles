#!/bin/sh

cd "$HOME"
cat PACK_ARC.txt | grep -v '#' | tr '\n' ' ' | xargs -d ' ' sudo pacman --noconfirm --needed -S
cat PACK_DIR.txt | grep -v '#' | tr '\n' ' ' | xargs -d ' ' mkdir -pv

