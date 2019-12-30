require_relative 'lib/string_monster'
require_relative 'lib/array_monster'
require_relative 'lib/hash_monster'
require_relative 'lib/user_input'

s_monster = StringMonster.new
# p s_monster.arrival_message

a_monster = ArrayMonster.new
# p a_monster.arrival_message
# p a_monster.reveal_object_message

h_monster = HashMonster.new
# p h_monster.arrival_message
# p h_monster.reveal_object_message

user_input = UserInput.new
user_input.validate_input_on_string_or_array_monster(s_monster)
user_input.validate_input_on_string_or_array_monster(a_monster)
# user_input.validate_input_on_hash(h_monster)