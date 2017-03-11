# Responsibility:: manage resolving spell execution & monster defeats check
# Collaborators: monster.rb, defeat_condition.rb
require './lib/defeat_conditions'

class BattleLogic

  # get defeat_condition for monster
  def fetch_defeat_condition

  end

  # display condition needed to defeat monster
  def show_defeat_condition(defeat_condition)
    puts '-' * 40
    puts
    puts "DEFEAT CONDITION:"
    puts "To defeat this monster you must...#{defeat_condition}"
    puts
  end

  def initiate_battles(monster_type, player, monster_counter, monster_limit)
    require './lib/battle_logic'

    battle = BattleLogic.new
    battle.battle_flow(monster_type, player, monster_counter, monster_limit)
  end
  # # control how battles are fought
  # def battle_flow(monster_type, player, monster_counter, monster_limit)
  #   while monster_counter <= monster_limit
  #     require './lib/monster'
  #
  #     monster = Monster.new
  #     enemy = monster.spawn_monster(monster_type)
  #     monster.announce_monster(enemy)
  #
  #     show_monster_defeat_condition
  #
  #     @player.display_health
  #     display_available_spells
  #     inputted_spell = activated_spell
  #     result = execute_spell(enemy, inputted_spell)
  #     check_defeat_result(result, expected_result(enemy))
  #   end
  # end

  private

  # # return what monster looks like when it is defeated
  # def expected_result(monster)
  #   monster.downcase
  # end
  #
  # def successfully_defeated_monster
  #   player.health += 1
  #   scoreboard.update('player1', 1, +1)
  # end

  # # resolve if spell defeated monster
  # def check_defeat_result(result, expected_result)
  #   unless result == expected_result
  #     puts "Your spell failed."
  #     lose_one_health
  #   end
  # end




#   # cast spell on monster / invoke method on object
#   def execute_spell(monster, spell)
#     puts "You cast the #{spell} spell:"
#     print "which turns the #{monster} into..."
#     print eval ("'#{monster}'.#{spell}")
#   end
# end








  # check score board to see if player passes a stage
  def completed?(stage_id, player)
    scoreboard.display(player)
    if [stage_id] == 10
      puts "you passed stage #{stage_id}"
    end
  end
end
