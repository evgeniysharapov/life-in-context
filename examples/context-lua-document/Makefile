in := main.tex
out := main.pdf

.DEFAULT_GOAL := cleanbuild

$(out): $(in)
	context --purgeall $<

clean:
	rm -rf generated* $(out)
.PHONY: clean

cleanbuild: clean $(out)
.PHONY: cleanbuild
