renameList =
  'symbols:left-bracket': 'dacorp'  # Not to confuse with precorp
  'symbols:right-bracket': 'dacose'
  'symbols:brackets': 'dax'
_.each renameList, (value, key, list) ->
  Commands.changeSpoken key, value
