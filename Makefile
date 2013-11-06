default: main.pdf

main.pdf: *.tex Makefile
	rm -f *.toc
	pdfcslatex -shell-escape main
	pdfcslatex -shell-escape main
	rm *.toc *.log *.aux *.bbl *.blg *.nav *.snm *.out *~
