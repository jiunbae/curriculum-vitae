# Curriculum Vitae

Bilingual CV supporting both English and Korean versions.

## Download

- English: [cv_en.pdf](https://raw.githubusercontent.com/jiunbae/curriculum-vitae/master/build/cv_en.pdf)
- Korean: [cv_ko.pdf](https://raw.githubusercontent.com/jiunbae/curriculum-vitae/master/build/cv_ko.pdf)

Last Update: 2024-11-21

## Building

### Requirements

- TeX Live 2025 (or compatible LaTeX distribution)
- Make (optional, for convenience)

### Quick Build

Build both versions:
```bash
make all
```

Build specific version:
```bash
make en    # English version
make ko    # Korean version
```

Clean build artifacts:
```bash
make clean
```

### Manual Build

English version (using pdfLaTeX):
```bash
latexmk -pdf -outdir=build cv_en.tex
```

Korean version (using XeLaTeX for Korean support):
```bash
latexmk -xelatex -outdir=build cv_ko.tex
```

## Structure

- `cv_en.tex` - English version entry point
- `cv_ko.tex` - Korean version entry point
- `cv.tex` - Main shared template
- `styles/sections/` - Content sections with bilingual text
- `build/` - Build output directory (PDFs and auxiliary files)

## Features

- Single source with conditional compilation for multiple languages
- Automatic content synchronization between versions
- Clean separation of build artifacts into `build/` directory
- Easy-to-use Makefile for building
