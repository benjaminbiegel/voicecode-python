myPackage = Packages.register
  name: 'pgAdmin'
  description: 'My package for pgAdmin'
  platforms: [
    'darwin'
    'linux'
    'windows'
  ]
  applications: ['org.pgadmin.pgAdmin4']

# http://wordoid.com/
# https://www.pgadmin.org/docs/pgadmin4/dev/keyboard_shortcuts.html
# ⌘ – command
# ⌥ – option
# ⇧ - shift
# ⎋ – ESC
# ⇪ – Capslock
# ⏎ – Return
# ⌫ – delete
# ^ - control
#
# myPackage.commands
#   'execute-in-console':
#     spoken: 'cute'
#     misspellings: ['acute']
#     description: 'Execute the selected lines of code in the python console.'
#     enabled: true
#     action: ->
#       @key  'e', 'shift option'


myPackage.implement
  'python:run-python-script': ->
    @key 'f5'
  'cursor:way-right': ->
    @key 'right', 'option'
  'cursor:way-left': ->
    @key 'left', 'option'
  'selection:way-right': ->
    @key 'right', 'option shift'
  'selection:way-left': ->
    @key 'left', 'option shift'
