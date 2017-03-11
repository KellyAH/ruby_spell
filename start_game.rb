#require './lib/screens/title_screen'
require './lib/player'
require './lib/stage'
require './lib/monster'
require './lib/spells'

#TitleScreen.new

# create player
# p1 = Player.new
#
# p1.set_player_name
# p1.display_player_name
# p1.display_health

# create stage
stage_data = { :one => ['1', 'Yarn-Ball Forest', 'String'],
               :two => ['2', "Jeweler's Lagoon", 'Array'],
               :three => ['3', 'Algebra Mountains', 'FixNum'],
               :four => ['4', 'Breakfast Desert', 'Hash']
  }

s1 =  Stage.new(stage_data[:one][0],stage_data[:one][1],stage_data[:one][2])
s1.display_stage_info

# generate monster
Monster.announce_monster(Monster.spawn_monster('string'))

Monster.announce_monster(Monster.spawn_monster('array'))

Monster.announce_monster(Monster.spawn_monster('fixnum'))

Monster.announce_monster(Monster.spawn_monster('hash'))

# show spells
spells = %w[.downcase .upcase .capitalize .split]

spell_list = Spells.new

puts spell_list.spells

spell_list.set_spells(spells)

spell_list.display_spells

spell_input = Spells.query_spell
Spells.clean_spell_input(spell_input, spell_list)

#resolve fight

b = BattleLogic.new
b.run(stage1, win_count)

