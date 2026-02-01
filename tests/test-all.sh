#!/bin/bash
# Test Hebrew templates
# Run from .pandoc directory: ./tests/test-all.sh

cd "$(dirname "$0")/.."

for tmpl in he hebrew; do
    echo "=== $tmpl ==="
    pandoc tests/test-fonts.md -d defaults/$tmpl.yaml -o tests/${tmpl}-output.pdf
    echo "Created: tests/${tmpl}-output.pdf"
done
