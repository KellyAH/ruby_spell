# Responsibility:: manage all spells in the game. Shown (earned), hidden (unlocked),
# Collaborators: battle_logic.rb
class SpellBook
  # returns a hash of of available spells for multi choice selection
  def self.set_spells
    {
      :a => '.downcase',
      :b => '.upcase',
      :c => '.capitalize',
      :d => '.split'
    }
  end

  def self.display_spells(spells_hash)
    puts "Your available spells:"

    spells_hash.each do |key, value|
      puts "#{key}. = #{value}"
    end
  end

  # # make spell available to player
  # def unlock_spell(spell)
  #   print "Congradulations! You have learned a new spell! #{spell}"
  # end

  # # show description for spell
  # def display_spell_description
  #   puts 'Spells X:'
  #   puts 'does...'
  # end


  # def display_rank(number)
  #   puts '*' * 30
  #   puts "Your Wizard Rank: #{number}"
  #   puts 'Available Spells: <SPELL ARRAY>'
  #   puts '*' * 30
  # end
end
