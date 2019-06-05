#!/bin/sh
BASEDIR=$( (cd -P "`dirname "$0"`" && pwd) )

set_link() {
    [ "$1" = "" ] && return
    [ "$2" = "" ] && return
    local HOME="$1"
    local SAVED="$2"

    # exit if both files does not exist
    [ ! -e "$SAVED" ] && [ ! -e "$HOME" ] && return 1

    # exit if home file is already a link
    [ -L "$HOME" ] && return 0

    # create a saved file from home file if it (saved) does not exist
    [ ! -e "$SAVED" ] && [ -e "$HOME" ] && [ ! -L "$HOME" ] && cp "$HOME" "$SAVED"

    # backup old home file
    [ -e "$HOME" ] && mv "$HOME" "$HOME.old-$RANDOM"

    # make home file a link of saved file
    ln -s "$SAVED" "$HOME"
}

mk_basedir() {
    [ "$1" = "" ] && return
    dir=$( dirname "$1" )
    [ -e "$dir" ] && return
    mkdir -p "$dir"
}


_HOME="$HOME/.config/firejail"
_SAVED="$BASEDIR/."

set_link "$_HOME" "$_SAVED"

