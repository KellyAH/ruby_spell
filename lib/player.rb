# Responsibility: manage player stats: health, etc.
# Collaborators: game.rb, spell_book.rb

class Player

  attr_accessor :health, :level

  # create player
  def initialize
    @health = 5
    WizardRank.new(1)
  end

  def lose_one_health
    @health = @health - 1
    puts "Player Health: #{@health}"
  end



end