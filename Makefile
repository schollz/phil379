# University of Calgary Logic II (Phil 379) text based on OLP
# Makefile

# YOU DO NOT HAVE TO USE THIS MAKEFILE
# Just run pdflatex on whichever tex file you want to compile
# The job of this makefile is to compile *everything*
 
# Requires latexmk https://www.ctan.org/pkg/latexmk/
# The PDF of the open-logic-config documentation also requires
# pandoc http://pandoc.org/

.PHONY : FORCE_MAKE

all: phil379-screen.pdf phil379-print.pdf

%.pdf : %.tex FORCE_MAKE
	latexmk -pdf -dvi- -ps- $<

clean:	
	latexmk -c phil379-screen.tex phil379-print.tex
