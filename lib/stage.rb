# manages all levels and the monsters in it, in the game.
# Collaborators: game_logic.rb
class Stage

  attr_accessor :monster_counter, :monster_limit, :player

  # loads stage
  def initialize(stage_number, spawn_limit, player)
    @monster_counter = 0
    @monster_limit = spawn_limit.to_i
    load_stage(stage_number.to_s)
    @player = player
  end

  # load stage and it's monsters
  def load_stage(number)
    case number
      when '1'
        display_stage_banner(1, "SilverLeaf Forest", "This was once the home of Dire Unicorns. Perhaps you'll encounter one today.")
        initiate_battles('string', @player, 0, 5)
      when '2'
        display_stage_banner(2, "Mirage Lagoon", "Legends say a great sea monster dwells here.")
      else
        # TODO: INSERT MORES STAGES
    end

  end

  private


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

end
