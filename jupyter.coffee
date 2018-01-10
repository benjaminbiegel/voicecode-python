myPackage = Packages.register
  name: 'jupyter'
  description: 'Commands for ipython notebook'
  platforms: [
    'darwin'
    'linux'
    'windows'
  ]
  applications: ['com.google.Chrome']

myPackage.commands
  'jupyter-pallet':
    spoken: 'jupiter pallet'
    enabled: true
    description: 'open jupyter notebooks command palette'
    action: ->
      @key 'p', 'command shift'


  # 'cell-run':
  #   spoken: 'cell run'
  #   enabled: true
  #   misspellings: ['selrang']
  #   description: 'run the currently selected cell'
  #   action: ->
  #     @key 'enter', 'shift'
  # 'cell-remove':
  #   spoken: 'cell delete'
  #   enabled: true
  #   misspellings: ['sell delete']
  #   description: 'remove the currently selected cell'
  #   action: ->
  #     @key 'escape'
  #     @key 'd'
  #     @key 'd'
  # 'cell-merge-down':
  #   spoken: 'cell merge down'
  #   enabled: true
  #   description: 'merge the current cell with the one below it'
  #   action: ->
  #     @do 'jupyter:jupyter-pallet'
  #     @delay 100
  #     @string 'merge cell with next cell'
  #     @delay 10
  #     @key 'enter'
  # 'cell-merge-up':
  #   spoken: 'cell merge up'
  #   enabled: true
  #   description: 'merge the current cell with the one above it'
  #   action: ->
  #     @do 'jupyter:jupyter-pallet'
  #     @delay 100
  #     @string 'merge cell with previous cell'
  #     @delay 10
  #     @key 'enter'
