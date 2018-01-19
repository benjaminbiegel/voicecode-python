renameList =
  'symbols:left-bracket': 'dacorp'  # Not to confuse with precorp
  'symbols:right-bracket': 'dacose'
  'symbols:brackets': 'derby'
  'common:enter': 'slap'
_.each renameList, (value, key, list) ->
  Commands.changeSpoken key, value

Commands.addMisspellings 'common:enter', ['chuck']
Commands.addMisspellings 'symbols:brackets', ['decks', 'dex']
Commands.addMisspellings 'common:enter', ['slip', 'slept']
Commands.addMisspellings 'symbols:colon-space', ['colon cap']
Commands.addMisspellings 'common:delete', ['spunky']
Commands.addMisspellings 'clipboard:paste', ['sport']
Commands.addMisspellings 'symbols:brackets', ['derby']
