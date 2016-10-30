SHELL=bash
LL=latexmk -pdf
CLEAN=latexmk -C

all: coredump.pdf sponsoring.pdf

.PHONY : clean all

%.pdf: %.tex
	$(LL) $<

clean:
	$(CLEAN)

# vim: set tabstop=4 shiftwidth=4 noexpandtab:
