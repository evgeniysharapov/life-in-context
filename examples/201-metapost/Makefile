all := circle.pdf


.PHONY: build
build: $(all)

# See MetaFun Manual (p. 5) at: http://www.pragma-ade.nl/general/manuals/metafun-p.pdf
# NOTE: `--ini metafun.mpii` invocation errors out.
%.1: %.mp
	mpost --mem metafun.mem $<

%.pdf: %.1
	mptopdf $<

.PHONY: clean
clean:
	rm -rf *.log *.pdf *.1 *.mpo
