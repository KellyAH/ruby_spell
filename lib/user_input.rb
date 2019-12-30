# Responsibility: capture and validate user input
# Collaborators:
class UserInput

  attr_reader :input

  def initialize
    print "Type out the name of the spell you wish to cast and press ENTER key: "
    @input = gets.chomp.downcase
  end

  # checks if user's input is a valid method for the object
  def valid_spell?(monster_object)
    if monster_object.class == HashMonster
      monster_object.monster.respond_to? input.to_sym
    elsif monster_object.class == StringMonster || ArrayMonster
      monster_object.name.respond_to? input.to_sym
    end
  end

  def display_spell_casting_message(monster_object)
    if valid_spell?(monster_object)
      p spell_cast_success_message(monster_object)
    else
      p spell_cast_failed_message(monster_object)
    end
  end

  private

  def spell_cast_success_message(monster_object)
    "You cast the #{input} spell on #{monster_object.name}."
  end

  def spell_cast_failed_message(monster_object)
    "Your #{input} spell won't work on #{monster_object.name} because it's a #{monster_object.class}."
  end

end
