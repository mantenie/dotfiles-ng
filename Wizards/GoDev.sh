#!/bin/bash
source 'base.sh'

function setup {
    mkdir -p ~/Development/Go && \
    mkdir -p ~/bin && \
    ln -sF $SCRIPTS_DIR/goclone ~/bin/goclone && \
    go get -u -a github.com/tools/godep

    return $?
}

LOCK=godev.lock
[ -f $LOCK_DIR/$LOCK ] || setup && touch $LOCK_DIR/$LOCK
