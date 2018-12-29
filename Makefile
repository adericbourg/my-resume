all: en

# English resume
en: pdf_en txt_en

pdf_en:
	pdflatex dericbourg_alban_resume_en.tex

txt_en: pdf_en
	pdftotext dericbourg_alban_resume_en.pdf

# Miscellaneous
clean:
	rm -f *.aux *.dvi *.log *.out

.PHONY: pdf txt pdf_en txt_en en clean
