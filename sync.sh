#!/usr/bin/env bash
# Skopíruje aktuálnu stránku (EN + SK) a zásady zo zdroja
# ~/projects/double-progression-web (stranka/ a privacy/) sem.
# Slovenskú verziu vyrobí sám (make_sk.py).
set -e
cd "$(dirname "$0")"
SRC=../double-progression-web/stranka
python3 "$SRC/make_sk.py"
cp "$SRC/index.html" "$SRC/robots.txt" "$SRC/sitemap.xml" "$SRC/favicon.ico" .
mkdir -p sk img fonts privacy
cp "$SRC/sk/index.html" sk/index.html
cp "$SRC"/img/*.webp "$SRC"/img/*.jpg "$SRC/img/icon-512.png" "$SRC/img/apple-touch-icon.png" img/
cp "$SRC"/fonts/* fonts/
cp ../double-progression-web/privacy/index.html privacy/index.html
git status --short
