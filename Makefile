all: pdf txt

pdf: dericbourg_alban_cv_fr.tex
	pdflatex dericbourg_alban_cv_fr.tex

txt: pdf
	pdftotext dericbourg_alban_cv_fr.pdf

clean:
	rm -f *.aux *.dvi *.log *.out

.PHONY: pdf txt clean
