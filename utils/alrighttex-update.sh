#!/bin/bash

REPODIR="$(realpath "$0" | xargs dirname | xargs dirname)"

cd "$REPODIR" || exit 1

[[ -d .git ]] && git pull
