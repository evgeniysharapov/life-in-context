-- Example of writing to and saving a buffer.

local c = context

-- Write a buffer to a file.
-- FIXME: Generated file contains ^Z control characters!
c.startbuffer({"generated"})
c([[
\starttext
\ConTeXt{}
\input knuth
\stoptext
]])
c.stopbuffer()

c.savebuffer {
   list = "generated",
   file = "generated.tex",
   prefix = "no"
}

-- FIXME: Broken due to ^Z control characters in generated output.
-- c.cldprocessfile("generated.tex")
