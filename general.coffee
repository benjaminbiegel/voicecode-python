myPackage = Packages.register
  name: 'general'
  description: 'My package for general-purpose actions.'
  platforms: [
    'darwin'
    'linux'
    'windows'
  ]

Package.commands
  'pick-last-word':
    spoken: 'tickle'
    grammarType: "textCapture"
    enabled: true
    autoSpacing: "normal normal"
    multiPhraseAutoSpacing: "normal normal"
    action: (input) ->
      if input
        @string input[input.length-1]
  'pick-first-word':
    spoken: 'pickle'
    grammarType: "textCapture"
    enabled: true
    autoSpacing: "normal normal"
    multiPhraseAutoSpacing: "normal normal"
    action: (input) ->
      if input
        @string input[0]
  'first-character-from-each-word-capitalized':
    spoken: 'yellsnitch'
    grammarType: "textCapture"
    enabled: true
    action: (input) ->
      if input
        @string Transforms.upperSlam(Transforms.firstLetters(input))
      else
        @transformSelectedText('firstLetters')
        @transformSelectedText('upperSlam')
  'comma-enter':
    spoken: 'comshock'
    description: 'Comma then enter'
    enabled: true
    action: ->
      @string ','
      @key 'enter'
