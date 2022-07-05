n := main
fig := 1 # Figure id as specified in the metapost file.
all := $(n).png $(n).svg $(n).$(fig) $(n).pdf



.PHONY: all
all: $(all)

# NOTE: Second arg must be "eps", "svg", or "png" (mpost default is "eps").
# See MetaPost manual (p. 67): https://www.tug.org/docs/metapost/mpman.pdf
define gen_fmt
  mpost --mem metafun -s 'outputformat="$(2)"' -s 'outputtemplate="%j.$(2)"' $(1)
endef

# See MetaFun Manual (p. 5) at: http://www.pragma-ade.nl/general/manuals/metafun-p.pdf
# NOTE: `--ini metafun.mpii` invocation errors out.
%.$(fig): %.mp
	mpost --mem metafun $<

%.svg: %.mp
	$(call gen_fmt,$<,svg)

%.png: %.mp
	$(call gen_fmt,$<,png)

%.pdf: %.$(fig)
	mptopdf $<

.PHONY: clean
clean:
	rm -rf *.log *.pdf *.svg *.png *.eps *.1 *.mpo
