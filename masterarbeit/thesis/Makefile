CC = pdflatex
EV = evince
BB = biber

.PHONY: all clean

evince: NF_Multi-Hop_TSCH.pdf
	$(EV) NF_Multi-Hop_TSCH.pdf

thesis: NF_Multi-Hop_TSCH.tex
	$(CC) --jobname NF_Multi-Hop_TSCH NF_Multi-Hop_TSCH.tex

bib: NF_Multi-Hop_TSCH.bcf
	$(BB) NF_Multi-Hop_TSCH.bcf

clean:
	rm -rf *.aux *.log *.out *.toc *.dvi tex/*.aux *.bcf *.bbl *.blg *.lof *.run *.run.xml
