# Responsibility: manage player's spell level and available spells.
# Collaborators: game_logic.rb, spell_book.rb player.rb

class WizardRank

  attr_accessor :rank

  def initialize(number)
    @rank = number
  end

  def raise_rank(number, amount)
  new_level = number + amount
  puts "You've gone up a Wizard Rank! You are now Rank: #{new_level}"
  end



end