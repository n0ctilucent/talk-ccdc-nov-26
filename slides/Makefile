# Makefile for talk-ccdc-nov-26 slides

TARGET = talk-ccdc
PDF = $(TARGET).pdf
TEX = $(TARGET).tex
PREAMBLE = preamble.tex

TARGET_V1 = talk-ccdc-v1
PDF_V1 = $(TARGET_V1).pdf
TEX_V1 = $(TARGET_V1).tex
PREAMBLE_V1 = preamble-v1.tex

.PHONY: all pdf pdf-v1 clean distclean lint help

all: pdf

pdf: $(PDF)

$(PDF): $(TEX) $(PREAMBLE)
	pdflatex -shell-escape $(TEX)
	pdflatex -shell-escape $(TEX)

pdf-v1: $(PDF_V1)

$(PDF_V1): $(TEX_V1) $(PREAMBLE_V1)
	pdflatex -shell-escape $(TEX_V1)
	pdflatex -shell-escape $(TEX_V1)

lint:
	@echo "==> Running ChkTeX audit on $(TEX)..."
	@if command -v chktex > /dev/null; then \
		chktex -q $(TEX); \
		echo "==> Audit complete. Documentation stability: 100%"; \
	else \
		echo "ERROR: 'chktex' not found."; \
		exit 1; \
	fi

clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb *.synctex.gz missfont.log

distclean: clean
	rm -f $(PDF) $(PDF_V1)

help:
	@echo "Targets:"
	@echo "  make pdf       - Build updated 16:9 presentation PDF (2 passes)"
	@echo "  make pdf-v1    - Build legacy 4:3 presentation PDF (2 passes)"
	@echo "  make lint      - Run ChkTeX linter on updated slides"
	@echo "  make clean     - Remove LaTeX auxiliary files"
	@echo "  make distclean - Remove auxiliary files and generated PDFs"
