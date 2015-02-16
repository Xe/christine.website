discount = require "discount"

fname = arg[1]
if not arg[1]
  error "Read the code"

with io.open fname, "r"
  -- Ignore the first three lines
  \read "*l"
  \read "*l"
  \read "*l"

  -- Read everything else
  local data
  data = ""

  while true
    line = \read "*l"
    break if not line or line == "" -- Only render the first paragraph
    line = line .. " " if line[#line] ~= " "

    data = data .. line

  -- render markdown
  md = discount data

  print md
