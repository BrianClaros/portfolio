#!/usr/bin/env bash
# Genera CV_Brian.pdf y CV_Brian_en.pdf a partir de cv.md y cv_en.md.
# Requiere pandoc y google-chrome.
set -euo pipefail
cd "$(dirname "$0")"
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

build() {
  local src=$1 out=$2 lang=$3
  pandoc "$src" -s --embed-resources --css cv.css -M lang="$lang" \
    --metadata pagetitle="CV Brian Claros" -o "$tmp/cv.html"
  google-chrome --headless=new --disable-gpu --no-pdf-header-footer \
    --print-to-pdf="$out" "file://$tmp/cv.html" 2>/dev/null
  echo "$out: $(pdfinfo "$out" | awk '/^Pages/ {print $2}') páginas"
}

build cv.md CV_Brian.pdf es
build cv_en.md CV_Brian_en.pdf en
