CC = pdflatex
EV = evince
BB = biber

.PHONY: all clean

all: 802154e_TSCH_Tutorial.pdf
	$(EV) 802154e_TSCH_Tutorial.pdf

thesis: 802154e_TSCH_Tutorial.tex
	$(CC) --jobname 802154e_TSCH_Tutorial 802154e_TSCH_Tutorial.tex

bib: 802154e_TSCH_Tutorial.bcf
	$(BB) 802154e_TSCH_Tutorial.bcf

clean:
	rm -rf *.aux *.log *.out *.toc *.dvi tex/*.aux *.bcf *.bbl *.blg *.lof *.run *.run.xml
