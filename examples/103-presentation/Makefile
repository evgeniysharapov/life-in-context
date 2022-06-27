pdf := main.pdf


.PHONY: build
build: $(pdf)

%.pdf: %.tex
	context $<

.PHONY: clean
clean:
	rm -f $(pdf)
