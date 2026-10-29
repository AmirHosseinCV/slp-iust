#!/bin/sh
# Build a single chapter in isolation: sh latex/test-chapter.sh 03-acoustic-phonetics
# Output: build/test-<chapter>/_test_<chapter>.pdf
set -e
cd "$(dirname "$0")"
C="$1"
sed "s|\\\\begin{document}|\\\\includeonly{chapters/$C}\\\\begin{document}|" main.tex > "_test_$C.tex"
mkdir -p "../build/test-$C/chapters"
latexmk -xelatex -interaction=nonstopmode -halt-on-error -outdir="../build/test-$C" "_test_$C.tex" > "../build/test-$C/latexmk.out" 2>&1 \
  && echo "OK: build/test-$C/_test_$C.pdf" \
  || { grep -n -A3 '^!' "../build/test-$C/_test_$C.log" | head -40; echo FAILED; }
rm -f "_test_$C.tex"
