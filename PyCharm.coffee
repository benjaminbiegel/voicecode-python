myPackage = Packages.register
  name: 'python'
  description: 'My package for python'
  platforms: [
    'darwin'
    'linux'
    'windows'
  ]
  applications: ['com.jetbrains.pycharm']

# http://wordoid.com/
# https://resources.jetbrains.com/storage/products/pycharm/docs/PyCharm_ReferenceCard_mac.pdf
# ⌘ – command
# ⌥ – option
# ⇧ - shift
# ⎋ – ESC
# ⇪ – Capslock
# ⏎ – Return
# ⌫ – delete
# ^ - control

myPackage.commands
  'execute-in-console':
    spoken: 'cute'
    misspellings: ['acute', 'queued']
    description: 'Execute the selected lines of code in the python console.'
    enabled: true
    action: ->
      @key  'e', 'shift option'
  'run-python-script':
    spoken: 'lunch'
    description: 'Run current script.'
    enabled: true
    grammarType: 'oneArgument'
    action: (input) ->
      if input?
        if input == 'stop'
          @key 'f2', 'command'
        else if input in ['run', 'one', 'from']
          @key 'r', 'control'
        else if input == 'test'
          @key 'd', 'control'
        else if input == 'running'
          @key 'r', 'control shift'
        else if input == 'testing'
          @key 'd', 'control shift'
  'resume-debug-commode':
    spoken: 'lender'
    description: 'Resume program.'
    misspellings: ['linda']
    enabled: true
    action: ->
        @key 'r', 'command option'
  'find-by-action':
    spoken: 'actics'
    description: 'Find by action.'
    enabled: true
    action: ->
      @key 'a', 'command shift'
  'goto-declaration':
    spoken: 'wayne'
    description: 'Go to declaration.'
    misspellings: ['when']
    enabled: true
    action: ->
      @key 'b', 'command'
  'activate-ace-jump':
    spoken: 'swan'
    description: 'Activate ace jump.'
    misspellings: ['sworn']
    enabled: true
    action: ->
      @key ';', 'control'
  'display-line-markers':
    spoken: 'swans'
    misspellings: ['swarms']
    description: 'Ace jump. Display line markers.'
    enabled: true
    action: ->
      @key ';', 'control shift'
  'start-in-target-mode':
    spoken: 'sworf'
    description: 'Ace jump. Start and target mode.'
    enabled: true
    action: (input) ->
      @key ';', 'control option'
      if input
        @string input
  'extract-rename':
    spoken: 'rename'
    description: 'Rename variable.'
    enabled: true
    action: ->
      @key 'f6', 'shift'
  'python-console':  # Must be added manually as a shortcut
    spoken: 'go console'
    description: 'Go to the python console'
    enabled: true
    action: ->
      @key 'c', 'control option command'
  # 'delete-backward-camel':  # Must be added manually as a shortcut
  #    spoken: 'junkcam'
  #    misspellings: ['junk cam', 'junk him', 'junk kim', "junk i'm",  "junk I'm"]
  #    enabled: true
  #    action: ->
  #      @key 's', 'control option command'
  # 'delete-forward-camel':  # Must be added manually as a shortcut
  #     spoken: 'spunkcam'
  #     misspellings: ['spunk him', "spunk I'm", "spunk cam", "spunk kim", "spunk i'm"]
  #     enabled: true
  #     action: ->
  #       @key 'e', 'control option command'
  'execute-next-word':
      spoken: 'cutie'
      misspellings: ['security', 'judy']
      enabled: true
      action: ->
        @do 'cursor:way-left'
        @do 'selection:word-right'
        @do 'python:execute-in-console'
        @delay 50
        @do 'cursor:way-left'
  'execute-and-evaluate':
      spoken: 'cutive'
      misspellings: ['curative', 'judith', 'cute if', 'putative', 'q chief']
      enabled: true
      action: ->
        @do 'python:execute-in-console'
        @delay 300
        @do 'cursor:up'
        @do 'python:execute-next-word'
  'double-click-and-evaluate':
      spoken: 'cutler'
      description: 'Double-click and execute in console.'
      enabled: true
      misspellings: ['coupler', 'popular', 'carla', 'kudlow', 'cobbler', 'coppola']
      action: ->
        @doubleClick()
        @delay 100
        @do 'python:execute-in-console'
  'toggle-breakpoint':
      spoken: 'breakpoint'
      misspellings: ['breakpoints', 'right point', 'right points']
      enabled: true
      action: ->
        @key 'f8', 'command'
  'duplicate-and-comment':
      spoken: 'jungle'
      enabled: true
      action: ->
        @do 'object:duplicate'
        @do 'editor:toggle-comments'
        @key 'up'
        @key 'up'
  'restart-invalidate':  # Must be added manually as a shortcut
      spoken: 'restart program'
      enabled: true
      action: ->
        @key 's', 'command'
        @key 'r', 'control option command'
        @delay 0.1
        @key 'enter'
  'integer-indexing':
      spoken: 'looking'
      enabled: true
      autoSpacing: 'never never'
      action: ->
        @string '.iloc['
  'name-indexing':
      spoken: 'look'
      enabled: true
      autoSpacing: 'never never'
      action: ->
        @string '.loc['
  'copy-potentially-whole-line':
    spoken: 'stool'
    misspellings: ['school']
    description: 'Normal copy, however copies whole line if nothing is selected in PyCharm.'
    enabled: true
    action: ->
        copied = @getSelectedText()
        if copied
          @do 'clipboard:copy'
        else
          @do 'selection:current-line'
          @do 'clipboard:copy'
  'align-with-previous-line':
    spoken: 'aligner'
    misspellings: ['eyeliner', 'alina', 'liner', 'alanna', 'ele', 'elana', 'elena', 'elinor', 'elaine']
    description: 'Align with the line above current line.'
    enabled: true
    action: ->
        @do 'cursor:way-left'
        @do 'selection:way-left'
        @do 'common:delete'
        @do 'common:delete'
        @do 'common:enter'
  'forward-slash-new-line':
    spoken: 'shane'
    description: 'Smart new line.'
    misspellings: ['shady', 'chain']
    enabled: true
    action: ->
        @do 'symbols:backslash'
        @do 'common:enter'
  'find-replace':
    spoken: 'replace'
    description: 'Open find replace.'
    enabled: true
    action: ->
        @key 'r', 'command'
        @do 'common:enter'
  'extraction-method':
    spoken: 'extract method'
    description: 'Extract method.'
    enabled: true
    action: ->
        @key 'm', 'option command'


myPackage.implement
  'selection:next-occurrence': (input) ->
    if input?.value?
      term = input?.value
      @key 'f', 'command'
      @delay 50
      @paste term
      @delay 50
      @key 'escape'
    else
      @key 'f', 'command'
  'common:find-next': ->
    @key 'g', 'command'
  'common:find-previous': ->
    @key 'g', 'shift command'
  'cursor:way-up': ->
    @key 'home', 'command'
  'cursor:way-down': ->
    @key 'end', 'command'
  'delete:way-left': ->
    @key 'left', 'command shift'
    @key 'delete'
  'selection:way-up': ->
    @key 'home', 'shift command'
  'selection:way-down': ->
    @key 'end', 'shift command'
  'text-manipulation:move-line-down': ->
    @key 'down', 'shift option'
  'text-manipulation:move-line-up': ->
    @key 'up', 'shift option'
  'text-manipulation:nudge-text-left': ->
    @key 'left', 'option'
    @key 'delete'
    @key 'right', 'option'
  'mouse-combo:cut-remove-hovered-line': ->
    @do 'mouse:triple-click'
    @do 'common:delete'
  'delete:partial-word':  ->
    @key 's', 'control option command'
  'delete:partial-word-forward': ->
    @key 'e', 'control option command'
  'cursor:partial-word-left': ->
    @key 'p', 'control option command'
  'cursor:partial-word-right': ->
    @key 'n', 'control option command'
