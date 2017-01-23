# Responsibility: manage player stats: health, etc.
# Collaborators: game_logic.rb, spell_book.rb
class Player
  attr_accessor :health, :level

  # create player
  def initialize
    @health = 5
    # WizardRank.new(1)
  end

  # display player stats
  def show_stats
    puts '*' * 30
    puts "Your Health: #{display_health_as_hearts(@health)}"
    puts 'Your Wizard Rank: 1'
    puts 'Available Spells: <SPELL ARRAY>'
    puts '*' * 30
  end

  # decrement player health by 1
  def lose_one_health
    @health -= 1
    puts "Player Health: #{@health}"
  end

  private

  # display player health as heart icons
  def display_health_as_hearts(number)
    " \u2764 " * number
  end
end
