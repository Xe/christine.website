discount = require "discount"
stringx  = require "pl.stringx"
dir      = require "pl.dir"

stringx.import!

summary = (post) ->
  local title
  local data

  with io.open post, "r"
    -- Ignore the first three lines
    title = \read "*l"
    \read "*l"
    \read "*l"
    -- Read everything else
    data = \read "*a"
    \close!

  -- render markdown
  md = discount data, "toc", "nopants", "autolink"

  {:title, :data, :md}

getPosts = ->
  posts = dir.getfiles "blog/", "*.markdown"
  ret = {}

  for _, filename in pairs posts
    continue unless filename
    my = summary filename
    my.slug = filename\sub 6

    post_date = do
      rev = filename\reverse!
      frags = rev\split "-"
      year = frags[3]\reverse!
      month = frags[2]\reverse!
      day = (frags[1]\reverse!)\split(".")[1]

      os.time
        :year
        :month
        :day

    my.date = os.date "%a, %d %b %Y %H:%M:%S", post_date
    my.date = my.date .. " GMT"

    table.insert ret, my

  ret

{:summary, :getPosts}
