# Makefile for talk-ccdc-nov-26

.PHONY: all pdf slides lint clean help

all: slides

slides: pdf

pdf:
	$(MAKE) -C slides pdf

lint:
	$(MAKE) -C slides lint

clean:
	$(MAKE) -C slides clean

help:
	@echo "Targets:"
	@echo "  make slides  - Build slide deck PDF"
	@echo "  make lint    - Run ChkTeX linter"
	@echo "  make clean   - Clean build artifacts"
