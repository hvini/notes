#!/bin/bash

set -e
echo "🔨 Compiling all notes..."

BUILD_DIR="build"
mkdir -p "$BUILD_DIR"

for note in modules/*/main.tex; do
    DIR=$(dirname "$note")
    NOTE_NAME=$(basename "$DIR")
    
    echo "📄 Compiling $NOTE_NAME"

    (
        cd "$DIR"
        
        pdflatex main.tex > /dev/null 2>&1
        biber main        > /dev/null 2>&1
        pdflatex main.tex > /dev/null 2>&1
        pdflatex main.tex > /dev/null 2>&1
    )

done

echo "✅ All PDFs are in the build/ directory."

