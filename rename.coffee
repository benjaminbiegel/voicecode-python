renameList =
  'symbols:left-bracket': 'dacorp'  # Not to confuse with precorp
  'symbols:right-bracket': 'dacose'
  'symbols:brackets': 'dax'
_.each renameList, (value, key, list) ->
  Commands.changeSpoken key, value

Commands.addMisspellings 'common:enter', ['chuck']
Commands.addMisspellings 'symbols:brackets', ['decks', 'dex']