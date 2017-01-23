# Responsibility: manage all levels and the monsters in it, in the game.
# Collaborators: game_logic.rb
class Stage

  def initialize(number)
    load_stage(number)
  end


  def load_stage(number)
    case number
      when "1"
        start_stage(1, "You walk to the Spigetti Forest. There's bound to be easy monsters to practice on here.")
      when "2"
        start_stage(2, "You walk to the Crystal Lagoon. There's bound to be more challengings monsters to defeat here.")
      else
        puts "<INSERT MORES STAGES>"
    end

  end

  private

  def start_stage(number, greeting)
    puts "*" * 30
    puts "Entering STAGE #{number}..."
    puts greeting
    puts "*" * 30
  end



end