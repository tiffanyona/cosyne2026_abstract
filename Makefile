MAIN = main

.PHONY: all panels pdf clean

# Build placeholder panels then compile the PDF
all: panels pdf

# Generate placeholder panel PDFs (replace with real figure scripts as panels are made)
panels:
	python tools/make_panels_example.py

# Compile the LaTeX document (requires latexmk + a TeX distribution)
pdf:
	latexmk -pdf -interaction=nonstopmode -halt-on-error $(MAIN).tex

# Remove all LaTeX build artifacts (keeps panel PDFs)
clean:
	latexmk -C $(MAIN).tex
