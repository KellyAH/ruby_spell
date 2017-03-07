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

  def display_spells
    puts "Your available spells:"

    @spells.each do |key, value|
      puts "#{key}. = #{value}"
    end
  end

  #ask user for spell input
  #TODO retry loop for failed input
  def self.query_spell
    puts "Input the letter for the spell you wish to cast:"
    @input = gets.chomp
    if @input.length != 1 || @input =~ /[a-dA-D]/
      puts "please enter a, b, c, or d. And press Enter key."
      @input = gets.chomp
    else
      puts "please enter a, b, c, or d. And press Enter key."
      @input = gets.chomp
    end
  end

  # capture spell executed
  def self.execute_spell(key)

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
