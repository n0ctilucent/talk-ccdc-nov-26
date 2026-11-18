# Makefile for talk-ccdc-nov-26

.PHONY: all pdf slides slides-v2 slides-v1 lint clean distclean help

all: slides

slides: pdf

pdf: slides-v2

slides-v2:
	$(MAKE) -C slides pdf-v2

slides-v1:
	$(MAKE) -C slides pdf-v1

lint:
	$(MAKE) -C slides lint

clean:
	$(MAKE) -C slides clean

distclean:
	$(MAKE) -C slides distclean

help:
	@echo "Targets:"
	@echo "  make slides    - Build v2 slide deck PDF (default)"
	@echo "  make slides-v2 - Build v2 slide deck PDF explicitly"
	@echo "  make slides-v1 - Build legacy v1 slide deck PDF"
	@echo "  make lint      - Run ChkTeX linter on v2 deck"
	@echo "  make clean     - Clean temporary auxiliary build files"
	@echo "  make distclean - Clean all artifacts and generated PDFs"
