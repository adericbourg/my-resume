all: fr en

# French resume
fr: pdf txt

pdf: dericbourg_alban_cv_fr.tex
	pdflatex dericbourg_alban_cv_fr.tex

txt: pdf
	pdftotext dericbourg_alban_cv_fr.pdf

# English resume
en: pdf_en txt_en

pdf_en:
	pdflatex dericbourg_alban_resume_en.tex

txt_en: pdf_en
	pdftotext dericbourg_alban_resume_en.pdf

# Miscellaneous
clean:
	rm -f *.aux *.dvi *.log *.out

.PHONY: pdf txt pdf_en txt_en fr en clean
