MAIN = thesis

mt: *.tex bibliography.bib
	latexmk -pdf $(MAIN).tex

watch: *.tex *.bib
	latexmk -pvc -pdf $(MAIN).tex

clean:
	rm *.log *.aux $(MAIN).dvi *.bbl *.blg *.ilg *.toc *.lof *.lot *.idx *.ind $(MAIN).ps $(MAIN).pdf *.out *.xml *.synctex.gz *.fdb_latexmk *.bcf *.fls *.xmpdata *.xmpi
