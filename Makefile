SHELL=bash
LL=latexmk -pdf
CLEAN=latexmk -C

all: coredump.pdf sponsoring.pdf

.PHONY : clean all

%.pdf: %.tex
	$(LL) $<

%.compressed.pdf: %.pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$@ $<

compressed: coredump.compressed.pdf sponsoring.compressed.pdf

clean:
	$(CLEAN)

# vim: set tabstop=4 shiftwidth=4 noexpandtab:
