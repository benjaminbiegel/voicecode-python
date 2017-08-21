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

myPackage.commands
  'execute-in-terminal':
    spoken: 'cunch'
    description: 'Execute the selected lines of code in the python console.'
    enabled: true
    action: ->
      @key  'e', 'shift option'
  'run-python-script':
    spoken: 'runch'
    description: 'Run current script.'
    enabled: true
    action: ->
      @key 'r', 'control'
  'debug-python-script':
    spoken: 'debug'
    description: 'Debug current script.'
    enabled: true
    action: ->
      @key 'd', 'shift control'
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

myPackage.implement
  'editor:move-to-line-number': (input) ->
    @key 'l', 'command'
  'delete:partial-word': ->
    @key 'delete', 'option'
  'editor:toggle-comments': ({first, last} = {}) ->
    @key '/', 'command'
  'object:forward': ->
    @key ']', 'command'
  'object:backward': ->
    @key '[', 'command'
  'cursor:way-up': ->
    @key 'pageup', 'command'
  'cursor:way-down': ->
    @key 'pagedown', 'command'
