# Responsibility: create player, manage player stats: health, etc.
# Collaborators: game_logic.rb, spell_book.rb
class Player
  attr_accessor :name, :health, :rank

  # set starting player attributes
  def initialize
    @health = 5
    #@rank = 1
    @name = nil
  end

  # asks player for name and sets it to @name
  def set_player_name
    puts "What is your name? "
    puts
    name = gets.chomp.strip
    if name == ""
      @name = "Player 1"
    else
      @name = name.capitalize
    end
  end

  # display player stats
  def display_player_name
    puts "You are: #{@name}."
  end

  # display player stats
  def display_health
    puts "Your Health: #{display_health_as_hearts(@health)}"
  end

  # # decrement player health by 1
  # def lose_one_health(health)
  #   puts "You lose 1 heart."
  #   health -= 1
  #   puts "Player Health: #{health}"
  # end

  private

  # display player health as heart icons
  def display_health_as_hearts(number)
    " \u2764 " * number
  end
end
