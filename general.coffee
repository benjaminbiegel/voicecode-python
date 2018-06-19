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
  'click-enter':
    spoken: 'shiffslap'
    description: 'Click + enter.'
    enabled: true
    action: ->
        @do 'mouse:click'
        @do 'common:enter'
  'paste-enter':
    spoken: 'sparks'
    description: 'Paste + enter.'
    enabled: true
    action: ->
        @do 'clipboard:paste'
        @do 'common:enter'
  'paste-comma-space':
    spoken: 'spate'
    misspellings: ['spade']
    description: 'Paste + , + space'
    enabled: true
    action: ->
        @do 'clipboard:paste'
        @do 'symbols:comma-space'
  'comma-space-paste':
    spoken: 'waste'
    description: ', + space + paste'
    enabled: true
    action: ->
        @do 'symbols:comma-space'
        @do 'clipboard:paste'
  'get-path-of-file':
    spoken: 'pathfinder'
    description: 'Copy path of selected file to clipboard.'
    enabled: true
    action: ->
        @key 'c', 'command option'
  'deleted-from-curse-onto-mouse':
    spoken: 'chiffjunk'
    misspellings: ['chiff junk']
    description: 'Delete everything from the curse until the mouse.'
    enabled: true
    action: ->
        @do 'mouse:shift-click'
        @do 'common:delete'
  'smart-parenthesis-surround':
    spoken: 'prex sing'
    misspellings: ['prex singh']
    description: 'Most we left, left parenthesis, mouse we write, right parenthesis.'
    enabled: true
    action: ->
        @do 'cursor:way-left'
        @do 'symbols:left-parentheses'
        @do 'cursor:way-right'
        @do 'symbols:right-parentheses'
  'smart-parenthesis-close-right':
    spoken: 'prex end'
    misspellings: ['prex and']
    description: 'Left parenthesis, mouse we write, right parenthesis.'
    enabled: true
    action: ->
        @do 'symbols:left-parentheses'
        @do 'cursor:way-right'
        @do 'symbols:right-parentheses'
  'space-then-left':
    spoken: 'spoon'
    description: 'Make a space, then move cursor left.'
    enabled: true
    action: ->
        @do 'symbols:space'
        @do 'cursor:left'
        @do 'symbols:right-parentheses'
  'word-left-then-spunk-then-word-right':
    spoken: 'fist'
    description: 'Remove unwanted space.'
    enabled: true
    action: ->
        @do 'cursor:word-left'
        @do 'common:forward-delete'
        @do 'cursor:word-right'
  'parenthesis-then-quote':
    spoken: 'pronto'
    description: "('')"
    enabled: true
    action: ->
        @do 'symbols:surround-parentheses'
        @do 'symbols:surround-single-quotes'
  'brackets-then-quote':
    spoken: 'prime'
    description: "['']"
    enabled: true
    action: ->
        @do 'symbols:brackets'
        @do 'symbols:surround-single-quotes'

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
