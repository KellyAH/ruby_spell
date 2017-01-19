# Responsibility: manage player stats: health, etc.
# Collaborators: game.rb, spell_book.rb

class Player

  attr_accessor :health, :level

  # create player
  def initialize
    @health = 5
    #WizardRank.new(1)
  end

  def show_stats
    puts "*" * 30
    puts "Your Health: #{@health}"
    puts "Your Wizard Rank: 1"
    puts "*" * 30
  end

  def lose_one_health
    @health = @health - 1
    puts "Player Health: #{@health}"
  end



end