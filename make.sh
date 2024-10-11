#!/bin/bash

case $1 in
    install | i )
        mkdir -p "$HOME/.local/bin"
        ln -svf "$PWD/utils/alrighttex-installer.sh" "$HOME/.local/bin/alrighttex-installer.sh"
        ;;
    build | b )
        for i in article report; do
            cat src/{_common,$i}.tex > latexlib/$i.H.tex
        done
        ;;
    oss )
        cfoss2 _dist/examples/example-report.pdf
        cfoss2 _dist/examples/example-article.pdf
        ;;
    examples | examples/ | e )
        ntex examples/*.tex --2
        ;;
    all | a)
        ./make.sh build
        if [[ "$USER" == neruthes ]]; then
            ./make.sh examples
            ./make.sh oss
        fi
        ;;
esac
