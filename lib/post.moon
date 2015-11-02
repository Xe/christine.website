discount = require "discount"

summary = (post) ->
  local title
  local data

  with io.open post, "r"
    -- Ignore the first three lines
    title = \read "*l"
    \read "*l"
    \read "*l"
    -- Read everything else
    data = ""

    while true
      line = \read "*l"
      break if not line or line == "" -- Only render the first paragraph
      line = line .. " " if line[#line] ~= " "

      data = data .. line

  -- render markdown
  md = discount data, "toc", "nopants", "autolink"

  {:title, :md}

{:summary}