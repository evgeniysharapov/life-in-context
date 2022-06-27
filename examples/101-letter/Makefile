pdf := main.pdf


%.pdf: %.tex
	context --purgeall $<

build: $(pdf)
.PHONY: build

clean:
	rm -f *.pdf *.log *.tuc
.PHONY: clean
