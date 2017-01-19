require './lib/monster'
require './lib/player'
require './lib/stage'
require './lib/game'

first_game = Game.new

#TODO put display stage into game class?
forest = Stage.new
forest.display_stage_info

#TODO make this return string and not class obj
#boogeyman = Monster.new
#boogeyman.create_monster

#monster = "SPOOKY_BOOGEYMAN"

first_game.show_monster("SPOOKY_BOOGEYMAN")
first_game.show_monster_defeat_condition

player_one = Player.new
player_one.show_stats

#TO DO how do i chain spell?
changed_monster = first_game.execute_spell("SPOOKY_BOOGEYMAN", "downcase")
#first_game.execute_spell("SPOOKY_BOOGEYMAN", "upcase")
#puts
#first_game.execute_spell(changed_monster, "split(//)")