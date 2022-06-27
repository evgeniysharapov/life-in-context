BUILDDIR := _build

%.pdf: %.tex
	context $<

%.pdf: %.mkiv
	context $<

all: $(BUILDDIR)/001-metadata.pdf

$(BUILDDIR)/001-metadata.pdf: examples/001-metadata/main.tex
	mkdir -p $(BUILDDIR)
	cd examples/001-metadata \
	&& context main.tex \
	&& mv main.pdf ../../$(BUILDDIR)/001-metadata.pdf

.PHONY: clean
clean:
	rm -rf $(BUILDDIR)
