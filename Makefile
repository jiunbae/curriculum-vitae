# Makefile for CV building
# Build output directory
BUILD_DIR = build

# Source files
EN_SOURCE = cv_en.tex
KO_SOURCE = cv_ko.tex

# Output PDFs
EN_PDF = $(BUILD_DIR)/cv_en.pdf
KO_PDF = $(BUILD_DIR)/cv_ko.pdf

# Default target: build both versions
.PHONY: all
all: en ko

# Build English version
.PHONY: en
en: $(EN_PDF)

$(EN_PDF): $(EN_SOURCE) cv.tex styles/**/*.tex include/*.tex
	@mkdir -p $(BUILD_DIR)
	latexmk -pdf -outdir=$(BUILD_DIR) $(EN_SOURCE)

# Build Korean version
.PHONY: ko
ko: $(KO_PDF)

$(KO_PDF): $(KO_SOURCE) cv.tex styles/**/*.tex include/*.tex
	@mkdir -p $(BUILD_DIR)
	latexmk -xelatex -outdir=$(BUILD_DIR) $(KO_SOURCE)

# Clean build directory
.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
	rm -f *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.log *.out *.run.xml *.xdv *.synctex.gz
	rm -f *-SAVE-ERROR

# Clean and rebuild
.PHONY: rebuild
rebuild: clean all

# Show help
.PHONY: help
help:
	@echo "Available targets:"
	@echo "  make all      - Build both English and Korean versions (default)"
	@echo "  make en       - Build English version only"
	@echo "  make ko       - Build Korean version only"
	@echo "  make clean    - Remove all build artifacts"
	@echo "  make rebuild  - Clean and rebuild everything"
	@echo ""
	@echo "Output PDFs will be in the $(BUILD_DIR)/ directory"
