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
    misspellings: ['acute']
    description: 'Execute the selected lines of code in the python console.'
    enabled: true
    action: ->
      @key  'e', 'shift option'
  'run-python-script':
    spoken: 'lunch'
    description: 'Run current script.'
    enabled: true
    action: ->
      @key 'r', 'control'
  'debug-python-script':
    spoken: 'luncheon'
    misspellings: 'luncheons'
    description: 'Debug current script or stop debug mode.'
    enabled: true
    grammarType: 'oneArgument'
    action: (input) ->
      if input?
        @key 'f2', 'command'  #Shortcut for stop debug mode
      else
        @key 'd', 'control'  #Shortcut for run in debug mode
  'resume-debug-commode':
    spoken: 'lender'
    description: 'Resume program.'
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
    spoken: 'declark'
    description: 'Go to declaration.'
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
  'delete-backward-camel':  # Must be added manually as a shortcut
     spoken: 'junkcam'
     misspellings: ['junk cam', 'junk him', 'junk kim', "junk i'm",  "junk I'm"]
     enabled: true
     action: ->
       @key 's', 'control option command'
  'delete-forward-camel':  # Must be added manually as a shortcut
      spoken: 'spunkcam'
      misspellings: ['spunk him', "spunk I'm", "spunk cam", "spunk kim", "spunk i'm"]
      enabled: true
      action: ->
        @key 'e', 'control option command'
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
  'toggle-breakpoint':
      spoken: 'breakpoint'
      misspellings: ['breakpoints']
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


myPackage.implement
  'editor:move-to-line-number': (input) ->
    @key 'l', 'command'
    if input
      @delay 10
      @string input
      @key 'return'
  'selection:next-occurrence': (input) ->
    if input?.value?
      term = input?.value
      @applescript """
      tell application "System Events" to key code 3 using {command down}
      delay 0.1
      tell application "System Events" to keystroke "#{term}"
      delay 0.1
      tell application "System Events" to key code 53
      """
    else
      @key 'f', 'command'
  'selection:next-selection-occurrence': ->
    @key 'g', 'command'
  'selection:previous-selection-occurrence': ->
    @key 'g', 'shift command'
  'delete:partial-word': ->
    @key 'delete', 'option'
  'editor:toggle-comments': ({first, last} = {}) ->
    @key '/', 'command'
  'object:forward': ->
    @key ']', 'command'
  'object:backward': ->
    @key '[', 'command'
  'cursor:way-up': ->
    @key 'home', 'command'
  'cursor:way-down': ->
    @key 'end', 'command'
  'delete:way-left': ->
    @key 'left', 'command shift'
    @key 'delete'
  'object:duplicate': ->
    @key 'd', 'command'
  'delete:lines': ->
    @key 'delete', 'command'
  'selection:way-up': ->
    @key 'home', 'shift command'
  'selection:way-down': ->
    @key 'end', 'shift command'
  'text-manipulation:move-line-down': ->
    @key 'down', 'shift option'
  'text-manipulation:move-line-up': ->
    @key 'up', 'shift option'
  'symbols:surround-braces': ->
    @key '{'
    @key '}'
    @key 'left'
  'symbols:brackets': ->
    @key '['
    @key ']'
    @key 'left'
  'symbols:surround-parentheses': ->
    @key '('
    @key ')'
    @key 'left'
  'symbols:surround-spaces': ->
    @key 'space'
    @key 'space'
    @key 'left'
  'object:next': ->
    @key ']', 'shift command'
  'object:previous': ->
    @key '[', 'shift command'
