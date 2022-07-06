name_from_tex := from_cld_via_tex.pdf
name_standalone := from_cld_standalone.pdf

all: $(name_from_tex) $(name_standalone)

# Render Lua CLD file via a (minimal) *.tex file.
$(name_from_tex): main.tex
	context $< --result=$@

# Render Lua CLD file directly (standalone, no need for a *.tex file).
# See manual (p. 21)
# http://www.pragma-ade.nl/general/manuals/cld-mkiv.pdf
$(name_standalone): my_cld.lua
	context $< --forcecld --result=$@

.PHONY: clean
clean:
	rm -rf *.log *.tuc *.pdf
