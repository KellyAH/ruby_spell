require_relative '../lib/ing_monster'
require_relative '../lib/array_monster'
require_relative '../lib/hash_monster'
require_relative '../lib/user_input'

s_monster = StringMonster.new
p s_monster.plain_arrival_message

s_monster = ArrayMonster.new
p s_monster.object_details_message

s_monster = HashMonster.new
p s_monster.arrival_message
p s_monster.reveal

user_input = UserInput.new
user_input.display