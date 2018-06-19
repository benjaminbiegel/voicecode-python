renameList =
  'common:enter': 'slap'
  'symbols:left-brace': 'kirk ling'
  'symbols:right-brace': 'kirk ring'
  'symbols:left-bracket': 'brack ling'
  'symbols:right-bracket': 'brack ring'
  'symbols:left-parentheses': 'prex ling'
  'symbols:right-parentheses': 'prex ring'
  'symbols:single-quote': 'posh ling'
  'symbols:double-quote': 'coyf ling'
  'symbols:right-angle': 'gray ling'
  'symbols:left-angle': 'less ling'
  'symbols:parentheses': 'prex way'
  'symbols:surround-double-quotes': 'coyf'
  'symbols:ampersand': 'pam'
  'symbols:at': 'pluto'
  'symbols:hashtag': 'pound'
  'clipboard:cut': 'snoop'


_.each renameList, (value, key, list) ->
  Commands.changeSpoken key, value

Commands.addMisspellings 'common:enter', ['chuck']
Commands.addMisspellings 'common:enter', ['slip', 'slept', 'slab']
Commands.addMisspellings 'symbols:colon-space', ['colon cap']
Commands.addMisspellings 'common:delete', ['spunky']
Commands.addMisspellings 'clipboard:paste', ['sport', 'sparky']
Commands.addMisspellings 'symbols:dot', ['doctor', 'but']
Commands.addMisspellings 'symbols:surround-single-quotes', ['push']
Commands.addMisspellings 'symbols:brackets', ['rex']
Commands.addMisspellings 'repetition:command-2', ['super']
Commands.addMisspellings 'symbols:at', ['ludo']
Commands.addMisspellings 'mouse:double-click', ['juke']
Commands.addMisspellings 'symbols:left-parentheses', ['prickling', 'prick ling']
Commands.addMisspellings 'symbols:right-parentheses', ['prickring', 'prick ring']
Commands.addMisspellings 'symbols:single-quote', ['pushing']
Commands.addMisspellings 'symbols:plus-padded', ['d+']
Commands.addMisspellings 'symbols:star-padded', ['buster']
Commands.addMisspellings 'repetition:command-2', ['sue']
Commands.addMisspellings 'symbols:surround-single-quotes', ['plush', 'bosch']
Commands.addMisspellings 'symbols:underscore', ['swept']
Commands.addMisspellings 'delete:partial-word', ['diffie']
Commands.addMisspellings 'symbols:backslash', ['schulz']
Commands.addMisspellings 'symbols:right-parentheses': ['black ring']
