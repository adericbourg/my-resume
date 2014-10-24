all: dericbourg_alban_cv.html dericbourg_alban_cv.pdf dericbourg_alban_cv.docx dericbourg_alban_cv.txt

dericbourg_alban_cv.html: dericbourg_alban_cv.md style.css
	pandoc --standalone -c style.css --from markdown --to html -o dericbourg_alban_cv.html dericbourg_alban_cv.md

dericbourg_alban_cv.pdf: dericbourg_alban_cv.html
	wkhtmltopdf -L 25mm -R 25mm -T 20mm -B 20mm dericbourg_alban_cv.html dericbourg_alban_cv.pdf

dericbourg_alban_cv.docx: dericbourg_alban_cv.md
	pandoc --from markdown --to docx -o dericbourg_alban_cv.docx dericbourg_alban_cv.md

dericbourg_alban_cv.txt: dericbourg_alban_cv.md
	pandoc --standalone --smart --from markdown --to plain -o dericbourg_alban_cv.txt dericbourg_alban_cv.md

clean:
	rm -f *.html *.pdf *.docx *.txt
