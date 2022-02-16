in := main.tex
out := main.pdf

.DEFAULT_GOAL := cleanbuild

$(out): $(in)
	context $<

clean:
	rm -rf *.log *.tuc generated* $(out)
.PHONY: clean

cleanbuild: clean $(out)
.PHONY: cleanbuild
