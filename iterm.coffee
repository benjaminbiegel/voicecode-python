pack = Packages.get 'iterm'

pack.implement
  'object:backward': ->
    @key 'left', 'option'
  'object:forward': ->
    @key 'right', 'option'

pack.commands
  'show-files':
    spoken: 'dear'
    description: 'Type ls + return.'
    enabled: true
    action: ->
      @string 'ls'
      @key 'enter'
  'change-directory':
    spoken: 'city'
    description: 'Type cd.'
    enabled: true
    grammarType: 'oneArgument'
    action: (input) ->
      if input? && (input == 'up')
        @string 'cd ..'
        @key 'enter'
      else
        @string 'cd '
  'get-current-path':
    spoken: 'working directory'
    description: 'Type pwd + return.'
    enabled: true
    action:->
      @string 'pwd'
      @key 'enter'
