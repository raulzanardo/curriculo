#!/bin/bash

# Convert markdown resumes to PDF with custom formatting
#
# Required packages:
#   - pandoc: brew install pandoc
#   - basictex (for xelatex): brew install --cask basictex
#
# After installing basictex, run: eval "$(/usr/libexec/path_helper)"

echo "Converting resumes to PDF..."

pandoc RaulZanardo_2026_EN.md -o RaulZanardo_2026_EN.pdf \
  --pdf-engine=xelatex \
  --variable mainfont="Arial" \
  --variable geometry:margin=0.5in \
  --variable pagestyle=empty

pandoc RaulZanardo_2026_PT.md -o RaulZanardo_2026_PT.pdf \
  --pdf-engine=xelatex \
  --variable mainfont="Arial" \
  --variable geometry:margin=0.5in \
  --variable pagestyle=empty

echo "✓ PDF files generated successfully:"
ls -lh *.pdf
