require_relative 'lib/string_monster'
require_relative 'lib/array_monster'
require_relative 'lib/hash_monster'
require_relative 'lib/user_input'

s_monster = StringMonster.new
s_monster.announce

s_monster = ArrayMonster.new
s_monster.announce
s_monster.reveal

s_monster = HashMonster.new
s_monster.announce
s_monster.reveal

user_input = UserInput.new
user_input.display