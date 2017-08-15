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
myPackage.commands
  'execute-in-terminal':
    spoken: 'conse'
    description: 'Execute the selected lines of code in the python console.'
    enabled: true
    action: ->
      @key  'e', 'alt shift'
  'run-python-script':
    spoken: 'runch'
    description: 'Run current script.'
    enabled: true
    action: ->
      @key 'f10', 'shift'
  'find-by-action':
    spoken: 'actics'
    description: 'Find by action.'
    enabled: true
    action: ->
      @key 'a', 'command shift'
  'goto-line':
    spoken: 'liness'
    description: 'Go to line.'
    enabled: true
    action: ->
      @key 'l', 'command'
