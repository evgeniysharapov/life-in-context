all := main.pdf


.PHONY: build
build: $(all)

# See MetaFun Manual (p. 5) at: http://www.pragma-ade.nl/general/manuals/metafun-p.pdf
%.pdf: %.tex
	context $<

.PHONY: clean
clean:
	rm -rf *.log *.pdf *.1 *.tuc
