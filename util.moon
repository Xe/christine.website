split = (s, delimiter) ->
  result = {}
  for match in (s..delimiter)\gmatch "(.-)"..delimiter
    table.insert result, match
  result
