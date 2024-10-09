#!/bin/bash

mkdir -p .deps
REPODIR="$(realpath "$0" | xargs dirname | xargs dirname)"

rsync -avu "$REPODIR/latexlib/" .deps/alrighttex/
