#!/usr/bin/env bash

backup() {
    
    DIR=$1
    PATHS=$2
    TARGET=$3

    shift; shift;

    for PATH in $PATHS; do
        /usr/bin/cp -rp "$DIR/$PATH" "$TARGET"
    done
}

rm -rf ./dots ./config

PATHS=".Xresources .extend.Xresources .zshrc .zsh_aliases .p10k.zsh .vimrc"
DIR=$HOME
TARGET="./dots"

backup "${DIR}" "${PATHS}" "$TARGET"

DIR="$HOME/.config"
PATHS="nitrogen ncmpcpp rofi polybar i3 ranger cava compton.conf"
TARGET="./config"

backup "${DIR}" "${PATHS}" "$TARGET"

PATHS="/etc/mopidy/mopidy.conf"

for PATH in $PATHS; do
    echo "copy $PATH manually and omit its secrets"
done
