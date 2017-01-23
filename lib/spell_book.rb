# R: manage all spells in the game. Shown (earned), hidden (unlocked),
# Collabs: game_logic.rb
class SpellBook
  # show all spells player has access to
  def display_spells
    puts 'Spells available:'
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
end
