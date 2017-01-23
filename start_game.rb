require './lib/monster'
require './lib/player'
require './lib/stage'
require './lib/game_logic'
require './lib/spell_book'
require './lib/wizard_rank'

game = GameLogic.new




# #TODO make this return string and not class obj
# #monster = Monster.new
# #monster.spawn_monster
#
#
# game.show_monster("SPOOKY_BOOGEYMAN")
# game.show_monster_defeat_condition
#
# player_one = Player.new
# player_one.show_stats
#
# #TO DO how do i chain spell?
# changed_monster = game.execute_spell("SPOOKY_BOOGEYMAN", "downcase")
# #game.execute_spell("SPOOKY_BOOGEYMAN", "upcase")
# #puts
# #game.execute_spell(changed_monster, "split(//)")