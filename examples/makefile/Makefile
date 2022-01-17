pdf := main.pdf


%.pdf: %.tex
	context --purgeall $<

build: $(pdf)

clean:
	rm -f *.pdf *.log *.tuc

.PHONY: build clean
