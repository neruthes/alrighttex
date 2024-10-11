# AlrightTeX (WIP)

A generic LaTeX theme suite that looks alright.


## Examples

- [Report](https://pub-714f8d634e8f451d9f2fe91a4debfa23.r2.dev/alrighttex/0c5cebd364ff6cdf24f4d84d/example-report.pdf)
- [Article](https://pub-714f8d634e8f451d9f2fe91a4debfa23.r2.dev/alrighttex/f7c1ce54b689b60fc93bb916/example-article.pdf)



## Installation

### Method 1: Get This Repository
Run these commands in this repo.

```sh
git clone https://github.com/neruthes/alrighttex
cd alrighttex
./make.sh install
```

Run this command in each repo root directory where documents are stored.

```sh
alrighttex-installer.sh
```

### Method 2: Get Files Only

```sh
mkdir -p .deps/alrighttex
for i in article report; do
    curl "https://raw.githubusercontent.com/neruthes/alrighttex/master/latexlib/$i.H.tex" -o ".deps/alrighttex/$i.H.tex"
done
```



## Use as Dependency
In document preamble:

```latex
\input{.deps/alrighttex/article.H.tex}
```



## Copyright

Copyright (c) 2024 Neruthes.

Released with the MIT license.
