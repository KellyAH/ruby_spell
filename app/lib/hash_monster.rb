# Responsibility: create and announce monster's arrival
# # Collaborators:

require 'faker'

class HashMonster
  attr_reader :monster

  def initialize
    base = Hash.new
    base[:name] = Faker::Games::ElderScrolls.creature
    base[:number_of_arms] = rand(1..10)
    base[:number_of_eyes] = rand(1..8)

    @monster = base
  end

  def arrival_message
    "A #{@monster[:name]} with #{@monster[:number_of_eyes]} eyes and #{@monster[:number_of_arms]} arms appears."
  end

  def reveal
    "Examining it closely, you see the monster's individual pieces as: #{@monster}."
  end
end