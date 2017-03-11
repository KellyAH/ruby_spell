# Responsibility:: manage all spells in the game. Shown (earned), hidden (unlocked),
# Collaborators: battle_logic.rb
class Spells

  attr_accessor :spells

  # create empty spells list
  def initialize
    @spells = {
        :a => nil,
        :b => nil,
        :c => nil,
        :d => nil
    }
  end

  # assign spells to multi choice options
  def set_spells(array)
    @spells[:a] = array[0]
    @spells[:b] = array[1]
    @spells[:c] = array[2]
    @spells[:d] = array[3]
  end

  # show spells on screen
  def display_spells
    puts "Your available spells:"

    @spells.each do |key, value|
      puts "#{key}. = #{value}"
    end
  end

  #ask user for spell input
  def self.query_spell
    puts "Input the letter for the spell you wish to cast:"
    gets.chomp
  end

  #sanatize and check user's spell input
  def self.clean_spell_input(user_input, spell_instance)
    input = user_input.to_s
    if !input.match(/^[a-dA-D]$/)
      puts "please enter a, b, c, or d. And press Enter key."
      query_spell
      clean_spell_input(user_input, spell_instance)
    else
      announce_executed_spell(input, spell_instance)
    end
  end

  # announce that spell executed on screen
  def self.announce_executed_spell(key, spell_instance)
    puts "You successfully cast the spell: #{spell_instance.spells[key.to_sym]}."
  end

end
