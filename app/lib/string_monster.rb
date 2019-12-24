# Responsibility: create and announce monster's arrival
# # Collaborators:

require 'faker'

class StringMonster
  attr_reader :name

  def initialize
    @name = String.new(Faker::Games::ElderScrolls.creature)
  end

  def arrival_message
    "A #{@name} appears."
  end
end