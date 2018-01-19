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
        @string input[sinput.length-1]
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
    spoken: 'commashock'
    misspellings: ['comshock', 'comslap']
    description: 'Comma then enter'
    enabled: true
    action: ->
      @string ','
      @key 'enter'
  'delete-symmetrical-character':
    spoken: 'slurp'
    description: 'Delete symmetrical characters.'
    enabled: true
    action: ->
        @do 'common:delete'
        @do 'common:forward-delete'
  'delete-symmetrical-word':
    spoken: 'slurps'
    misspellings: ['slopes']
    description: 'Delete symmetrical word.'
    enabled: true
    action: ->
        @do 'delete:word'
        @do 'delete:word-forward'
  'shift-enter':
    spoken: 'shiffslap'
    description: 'Shift + enter.'
    enabled: true
    action: ->
        @key 'enter', 'shift'
  'paste-enter':
    spoken: 'sparks'
    description: 'Paste + enter.'
    enabled: true
    action: ->
        @do 'clipboard:paste'
        @do 'common:enter'
  'get-path-of-file':
    spoken: 'pathfinder'
    description: 'Copy path of selected file to clipboard.'
    enabled: true
    action: ->
        @key 'c', 'command option'
  # 'test-command':
  #   spoken: 'testing'
  #   description: 'Test'
  #   enabled: true
  #   action: ->
  #       copied = @getSelectedText()
  #       if copied
  #         @do 'clipboard:copy'
  #       else
  #         @do 'selection:current-line'
  #         @do 'clipboard:copy'
        # @delay 1000
        # @paste copied
        # @delay 1000
        # @key 't'
