# manage resolving spell execution, monster defeats check, health decrease, resolving turns and wins/losses etc.
class BattleLogic

  # control how battles are fought
  def battle_flow(monster_type, player, monster_counter, monster_limit)
    while monster_counter <= monster_limit
      require './lib/monster'

      monster = Monster.new
      enemy = monster.spawn_monster(monster_type)
      monster.announce_monster(enemy)

      show_monster_defeat_condition

      @player.display_health
      display_available_spells
      inputted_spell = activated_spell
      result = execute_spell(enemy, inputted_spell)
      check_defeat_result(result, expected_result(enemy))
    end
  end

  private

  # return what monster looks like when it is defeated
  def expected_result(monster)
    monster.downcase
  end

  def successfully_defeated_monster
    player.health += 1
    scoreboard.update('player1', 1, +1)
  end

  # resolve if spell defeated monster
  def check_defeat_result(result, expected_result)
    unless result == expected_result
      puts "Your spell failed."
      lose_one_health
    end
  end

  # display condition needed to defeat monster
  def show_monster_defeat_condition
    puts '-' * 40
    puts
    print "DEFEAT CONDITION:"
    print "To defeat this monster you must..."
    print "make it smaller (turn in into lowercase form.)"
    puts
    #print "turn it into an ARRAY type monster"
  end

  # show unlocked spells
  def display_available_spells
    require './lib/spell_book'
    book = SpellBook.new
    puts '-' * 40
    puts
    puts "YOUR SPELLS: #{book.spells}"
    puts
    puts '-' * 40
  end

  # return spell user inputs
  def activated_spell
    puts "Please type the spell you want to cast:"
    gets.chomp.strip
  end

  # cast spell on monster / invoke method on object
  def execute_spell(monster, spell)
    puts "You cast the #{spell} spell:"
    print "which turns the #{monster} into..."
    print eval ("'#{monster}'.#{spell}")
  end
end



b = BattleLogic.new
b.run(stage1, win_count)




# TODO move this to battle logic
def initiate_battles(monster_type, player, monster_counter, monster_limit)
  require './lib/battle_logic'

  battle = BattleLogic.new
  battle.battle_flow(monster_type, player, monster_counter, monster_limit)
end

# display banner when entering stage
def display_stage_banner(number, name, description)
  puts '*' * 30
  puts "Entering STAGE #{number} - #{name}..."
  puts description
  puts '*' * 30
end

# check score board to see if player passes a stage
def completed?(stage_id, player)
  scoreboard.display(player)
  if [stage_id] == 10
    puts "you passed stage #{stage_id}"
  end
end
