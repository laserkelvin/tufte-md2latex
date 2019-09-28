SHELL=/bin/bash

filename=research_statement

tex: 
	pandoc --template=handout.tex \
    --natbib \
    --bibliography=references.bib \
    ${filename}.md \
    -o ${filename}.tex

pdf: 
	sed -i 's/citep/cite/g' ${filename}.tex
	pdflatex --interaction=nonstopmode ${filename}.tex 
	bibtex ${filename}
	pdflatex --interaction=nonstopmode ${filename}.tex 
	pdflatex --interaction=nonstopmode ${filename}.tex 

clean: 
	rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg,bcf}

