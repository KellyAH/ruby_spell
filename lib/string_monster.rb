# Responsibility: create a monster with a name of object type string and announce monster's arrival
# # Collaborators:

require 'faker'
require 'spicy-proton'

class StringMonster
  attr_reader :name

  def initialize(type)
    @name = create_name(type)
  end

  def arrival_message
    "A #{name} appears."
  end

  ##
  # NOTE:
  # Faker's generated monster name is random.
  # it could be 1 word "dog", or multiple words "Falmer Nightprowler", "Dire Falmer Nightprowler""
  # some spell methods (E.g. split) only look good on strings containing multiple words

  ##
  # Produces a monster name containing one or many words
  # @params [type] can be 'single' or 'many'
  #
  # @return [String]
  #
  # @example
  #   create_name(:single) #=> "Argonian"
  #   create_name(:multi) #=> "Shy Argonian"
  def create_name(type)
    case type
    when :single
      create_single_name
    when :multi
      create_multi_name
    else
      raise StandardError, "Invalid paramater [type], Expected :single or :multi."
    end
  end

  private

  ##
  # Produces a monster name containing one word
  #
  # @return [String]
  #
  # @example
  #   create_single_name #=> "Ghost"
  #
  # if auto generated base name contains more than 1 word, the last word is returned
  def create_single_name
    base_name = String.new(Faker::Games::ElderScrolls.creature)
    if base_name.split.size >= 1
      base_name.split.last
    else
      return base_name
    end
  end

  ##
  # Produces a monster name containing many words
  #
  # @return [String]
  #
  # @example
  #   create_multi_name #=> "Shy Bear"
  #
  # if auto generated base name contains only 1 word, an adjective is added to the front
  def create_multi_name
    base_name = String.new(Faker::Games::ElderScrolls.creature)
    if base_name.split.size == 1
      adjective = Spicy::Proton.adjective.capitalize
      new_name = base_name.split.unshift(adjective)
      new_name.join(' ')
    else
      return base_name
    end
  end
end