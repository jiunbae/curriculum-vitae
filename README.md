# Curriculum Vitae

[![Build and Release CV](https://github.com/jiunbae/curriculum-vitae/actions/workflows/build-and-release.yml/badge.svg)](https://github.com/jiunbae/curriculum-vitae/actions/workflows/build-and-release.yml)
[![Latest Release](https://img.shields.io/github/v/release/jiunbae/curriculum-vitae)](https://github.com/jiunbae/curriculum-vitae/releases/latest)

Bilingual CV supporting both English and Korean versions.

## Download

📥 **Latest Version:** [Releases](https://github.com/jiunbae/curriculum-vitae/releases/latest)

- English: `cv_en.pdf`
- Korean: `cv_ko.pdf`

> PDFs are automatically built and released via GitHub Actions when a new version tag is pushed.

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
- **Automated CI/CD**: GitHub Actions automatically builds and releases PDFs on version tags

## Automated Releases

This repository uses GitHub Actions to automatically build and release PDFs when you push a version tag:

```bash
# Create and push a version tag
git tag v1.0.0
git push origin v1.0.0
```

The workflow will:
1. Build both English and Korean PDFs
2. Create a new GitHub release
3. Upload the PDFs as release assets

For more details, see [.github/workflows/README.md](.github/workflows/README.md)
