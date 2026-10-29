MAIN := latex/main.tex
BUILD_DIR := build

.PHONY: all pdf release clean

all: pdf

pdf:
	mkdir -p $(BUILD_DIR)/chapters
	latexmk -cd -xelatex -interaction=nonstopmode -halt-on-error \
		-outdir=../$(BUILD_DIR) $(MAIN)

release: pdf

clean:
	latexmk -cd -C -outdir=../$(BUILD_DIR) $(MAIN)
