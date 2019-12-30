# Responsibility: capture and validate user input
# Collaborators:
class UserInput

  attr_reader :input

  def initialize
    print "Type out the name of the spell you wish to cast and press ENTER key: "
    @input = gets.chomp
  end

  def spell_cast_success_message(monster_object)
    "You cast the #{input} spell on #{monster_object.name}."
  end

  def spell_cast_failed_message(monster_object)
    "Your #{input} spell won't work on #{monster_object.name} because it's a #{monster_object.class}."
  end

  # checks if user's input is a valid method for the object
  def validate_input_on_string_or_array_monster(monster_object)
    if monster_object.name.respond_to? input.to_sym
      p spell_cast_success_message(monster_object)
    else
      p spell_cast_failed_message(monster_object)
    end
  end

  def validate_input_on_hash(monster_object)
    # check if user's input is a valid method for the object
    p "QQQQ - : name is: #{monster_object.name}"
    monster_object_type = monster_object.monster.class
    p "QQQQ - : object type is: #{monster_object_type}"

    if monster_object.respond_to? input.to_sym
      p spell_cast_success_message(monster_object)
    else
      p spell_cast_failed_message(monster_object)
    end
  end
end
