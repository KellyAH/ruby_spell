# Responsibility: create and announce monster's arrival
# # Collaborators:

require 'faker'

class StringMonster
  attr_reader :monster

  def initialize
    @monster = String.new(Faker::Games::ElderScrolls.creature)
  end

  def announce
    p "A #{@monster} appears."
  end
end

require 'spicy-proton'

class ArrayMonster
  attr_reader :monster

  def initialize
    @monster = create_monster_name
  end

  def announce
    p "A #{@monster.join(' ')} appears."
  end

  def reveal
    p "Examining it closely, you see the monster's individual pieces as: #{@monster}."
  end

  private

  # create descriptive monster name full of adjectives
  def create_monster_name
    name = Faker::Games::ElderScrolls.creature

    if name.include?(' ')
      name = separate_paired_name(name)
      [Spicy::Proton.adjective, Spicy::Proton.adjective].concat(name)
    else
      [Spicy::Proton.adjective, Spicy::Proton.adjective, name]
    end
  end
  # handle when Faker generates a monster name containing 2 or more words E.g. "Sabre Cat" or "Draugr Death Overlord"
  # turns string into an array and returns it
  def separate_paired_name(name)
    name.split
  end
end

class HashMonster
  attr_reader :monster

  def initialize
    base = Hash.new
    base[:name] = Faker::Games::ElderScrolls.creature
    base[:number_of_arms] = rand(1..10)
    base[:number_of_eyes] = rand(1..8)

    @monster = base
  end

  def announce
    p "A #{@monster[:name]} with #{@monster[:number_of_eyes]} eyes and #{@monster[:number_of_arms]} arms appears."
  end

  def reveal
    p "Examining it closely, you see the monster's individual pieces as: #{@monster}."
  end
end

# Responsibility: capture and validate user input
# Collaborators:
class UserInput

  attr_reader :input

  def initialize
    print "Type out the name of the spell you wish to cast and press ENTER key: "
    @input = gets.chomp
  end

  def display
    p "You cast #{@input} spell."
  end

  def validate_input
    # check if it is a valid method for the object
    #
  end

end

# s_monster = StringMonster.new
# s_monster.announce

# s_monster = ArrayMonster.new
# s_monster.announce
# s_monster.reveal

# s_monster = HashMonster.new
# s_monster.announce
# s_monster.reveal

user_input = UserInput.new
user_input.display