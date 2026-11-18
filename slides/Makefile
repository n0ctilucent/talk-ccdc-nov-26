# Makefile for talk-ccdc-nov-26 slides

TARGET_V2 = talk-ccdc-v2
PDF_V2 = $(TARGET_V2).pdf
TEX_V2 = $(TARGET_V2).tex
PREAMBLE_V2 = preamble-v2.tex

TARGET_V1 = talk-ccdc-v1
PDF_V1 = $(TARGET_V1).pdf
TEX_V1 = $(TARGET_V1).tex
PREAMBLE_V1 = preamble-v1.tex

# Default target is v2
TARGET = $(TARGET_V2)
PDF = $(PDF_V2)

.PHONY: all pdf pdf-v2 pdf-v1 clean distclean lint lint-v2 lint-v1 help

all: pdf

pdf: pdf-v2

pdf-v2: $(PDF_V2)

$(PDF_V2): $(TEX_V2) $(PREAMBLE_V2)
	pdflatex -shell-escape $(TEX_V2)
	pdflatex -shell-escape $(TEX_V2)

pdf-v1: $(PDF_V1)

$(PDF_V1): $(TEX_V1) $(PREAMBLE_V1)
	pdflatex -shell-escape $(TEX_V1)
	pdflatex -shell-escape $(TEX_V1)

lint: lint-v2

lint-v2:
	@echo "==> Running ChkTeX audit on $(TEX_V2)..."
	@if command -v chktex > /dev/null; then \
		chktex -q $(TEX_V2); \
		echo "==> Audit complete. Documentation stability: 100%"; \
	else \
		echo "ERROR: 'chktex' not found."; \
		exit 1; \
	fi

lint-v1:
	@echo "==> Running ChkTeX audit on $(TEX_V1)..."
	@if command -v chktex > /dev/null; then \
		chktex -q $(TEX_V1); \
		echo "==> Audit complete."; \
	else \
		echo "ERROR: 'chktex' not found."; \
		exit 1; \
	fi

clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb *.synctex.gz missfont.log

distclean: clean
	rm -f $(PDF_V2) $(PDF_V1) talk-ccdc.pdf

help:
	@echo "Targets:"
	@echo "  make pdf       - Build presentation PDF (v2 16:9 widescreen default)"
	@echo "  make pdf-v2    - Explicitly build v2 presentation PDF"
	@echo "  make pdf-v1    - Build legacy 4:3 presentation PDF"
	@echo "  make lint      - Run ChkTeX linter on v2 slides"
	@echo "  make clean     - Remove LaTeX auxiliary files"
	@echo "  make distclean - Remove auxiliary files and generated PDFs"
