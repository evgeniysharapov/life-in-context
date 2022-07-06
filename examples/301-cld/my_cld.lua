-- Example Context Lua Document (CLD).
-- See:
--   - https://wiki.contextgarden.net/CLD
--   - http://www.pragma-ade.nl/general/manuals/cld-mkiv.pdf

local c = context
local my_name = "John Gosset"

c.setuppagenumbering({ location = "" })
c.setuppapersize({ "letter" })
c.setuphead({ "title" }, { align = "center", style = "\\bfd" })
c.setupbodyfont({ "modern" })
c.setupinteraction({ author=my_name })

c.starttext()
c.startalignment({ "center" })
c.title([[An Example \ConTeXt{} Lua Document (CLD)]])
c.subtitle(my_name)
c.par()
c.subtitle(c.currentdate())
c.stopalignment()

c.section("Some Notes About This")
c([[
Multiple lines of text via Lua multi-line string.

This works pretty well finally!

The proof is in the pudding.

A CLD can be converted to a PDF directly (without needing a \ConTeXt{} file):

\blank

\type{context --forcecld my_cld.lua}
]])

c.section("Knuth")
c.input("knuth")

c.stoptext()
