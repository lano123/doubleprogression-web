#!/usr/bin/env bash
# Skopíruje aktuálnu stránku a zásady z repa skilltree sem.
set -e
cd "$(dirname "$0")"
SRC=../skilltree
cp -r "$SRC/stranka/index.html" "$SRC/stranka/img" "$SRC/stranka/fonts" .
cp "$SRC/privacy/index.html" privacy/index.html
git status --short
