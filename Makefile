latexfile = tensorflow-internals

all: prepare pdf

prepare:
	mkdir -p output

pdf: $(latexfile).tex
	xelatex -interaction nonstopmode  --output-directory=output $(latexfile).tex

clean:
	rm -rf output

.PHONY: all prepare clean
