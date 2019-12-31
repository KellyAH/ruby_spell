require_relative 'lib/string_monster'
require_relative 'lib/array_monster'
require_relative 'lib/hash_monster'
require_relative 'lib/user_input'
require_relative 'lib/battle_scene_flow'
require_relative 'lib/fight_scenarios'

scene = BattleSceneFlow.new

# s1_monster = StringMonster.new(:single)
# s2_monster = StringMonster.new(:multi)
# # p s_monster.name
# p s1_monster.arrival_message
# p s2_monster.arrival_message
#
# # p s_monster.create_single_name
# # p s_monster.create_multi_name
#
# # p s_monster.create_name(:single)
# # p s_monster.create_name(:multi)
# # p s_monster.create_name('blah')
#
# a_monster = ArrayMonster.new
# # p a_monster.arrival_message
# # p a_monster.reveal_object_message
#
# h_monster = HashMonster.new
# # p h_monster.arrival_message
# # p h_monster.reveal_object_message
#

# user_input.validate_input_on_string_or_array_monster(s_monster)
# user_input.validate_input_on_string_or_array_monster(a_monster)
# user_input.validate_input_on_hash(h_monster)
# p user_input.valid_spell?(s_monster)
# p user_input.valid_spell?(a_monster)
# p user_input.valid_spell?(h_monster)

# user_input.display_spell_casting_message(s_monster)
# user_input.display_spell_casting_message(a_monster)
# user_input.display_spell_casting_message(h_monster)

