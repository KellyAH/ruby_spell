# Responsibility: create and announce monster's arrival
# # Collaborators:

require 'faker'

class HashMonster
  attr_reader :monster, :name

  def initialize
    base = Hash.new
    base[:name] = Faker::Games::ElderScrolls.creature
    base[:number_of_arms] = rand(1..10)
    base[:number_of_eyes] = rand(1..8)

    @monster = base
    @name = monster[:name]
  end

  def arrival_message
    "A #{monster[:name]} with #{monster[:number_of_eyes]} eyes and #{monster[:number_of_arms]} arms appears."
  end

  def reveal_object_message
    "Using arcane sight, you see the monster's true form is: #{monster}."
  end
end