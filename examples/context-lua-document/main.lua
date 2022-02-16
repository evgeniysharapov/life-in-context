-- Example of a ConTeXt Lua Document (CLD).
-- See https://wiki.contextgarden.net/CLD

local c = context
local tmpl = [[
\starttext
\ConTeXt
\input knuth
\stoptext
]]

c.environment { "env_cld" }
c.usemodule({"letter"})

-- Write a buffer to a file.
c.startbuffer({"generated"})
c(tmpl)
c.stopbuffer()

c.savebuffer {
   list = "generated",
   file = "generated.tex",
   prefix = "no"
}

-- Create a letter.
c.starttext()
c.startletter { opening = "Hiring Manager", closing = "Sincerely", signature = "John Gosset" }
    c.par()
    c("foo")
c.stopletter()
c.stoptext()
