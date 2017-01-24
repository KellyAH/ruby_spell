# R: manage all spells in the game. Shown (earned), hidden (unlocked),
# Collabs: game_logic.rb
class SpellBook
  # returns an array of available spells
  def spells
    %w[.downcase, .upcase, .capitalize]
  end

  # make spell available to player
  def unlock_spell(spell)
    print "Congradulations! You have learned a new spell! #{spell}"
  end

  # show description for spell
  def display_spell_description
    puts 'Spells X:'
    puts 'does...'
  end


  def display_rank(number)
    puts '*' * 30
    puts "Your Wizard Rank: #{number}"
    puts 'Available Spells: <SPELL ARRAY>'
    puts '*' * 30
  end
end
