CC = pdflatex
EV = evince
BB = biber

.PHONY: all clean

all: S-NGN_SS2015_Biesinger.pdf
	$(EV) S-NGN_SS2015_Biesinger.pdf

thesis: S-NGN_SS2015_Biesinger.tex
	$(CC) --jobname S-NGN_SS2015_Biesinger S-NGN_SS2015_Biesinger.tex

bib: S-NGN_SS2015_Biesinger.bcf
	$(BB) S-NGN_SS2015_Biesinger.bcf

clean:
	rm -rf *.aux *.log *.out *.toc *.dvi tex/*.aux *.bcf *.bbl *.blg *.lof *.run *.run.xml
