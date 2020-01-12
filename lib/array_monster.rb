# Responsibility: create and announce monster's arrival
# # Collaborators:

require 'faker'
require 'spicy-proton'

class ArrayMonster
  attr_reader :name, :name, :name_array
  attr_accessor :monster

  def initialize
    @monster = create_monster
    @name_array = monster
    @name = monster.join(' ')
  end

  def arrival_message
    "A #{name} appears."
  end

  def reveal_object_message
    "Using arcane sight, you see the monster's true form is: #{name_array}."
  end

  private

  # create descriptive monster name full of adjectives
  # returns an array of strings E.g. ["sodden", "abusive", "Ghost"]
  def create_monster
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