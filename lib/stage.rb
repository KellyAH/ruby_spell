# manages all levels and the monsters in it, in the game.
# Collaborators: game_logic.rb
class Stage
  # loads stage
  def initialize(number)
    load_stage(number)
  end

  # load stage steps
  def load_stage(number)
    case number
      when "1"
        enter_stage_banner(1, "You walk to the Spigetti Forest. There's bound to be easy monsters to practice on here.")
      when "2"
        enter_stage_banner(2, "You walk to the Crystal Lagoon. There's bound to be more challengings monsters to defeat here.")
      else
        # TODO: INSERT MORES STAGES
    end

  end

  private

  # display banner when entering stage
  def enter_stage_banner(number, greeting)
    puts '*' * 30
    puts "Entering STAGE #{number}..."
    puts greeting
    puts '*' * 30
  end
end
