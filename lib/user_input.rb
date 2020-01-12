# Responsibility: capture and validate user input
# Collaborators: monster classes
class UserInput
  attr_reader :input, :method, :args

  def initialize
    @input = prompt_user_for_input
    if input_contains_args?
      @method = input.split.first
      @args = input.split.last
    else
      @method = input
      @args = nil
    end

  end

  def input_contains_args?
    input.include?(' ') || input.include?('(') ||  input.include?(')')
  end

  def prompt_user_for_input
    print "Type out the name of the spell you wish to cast and press the ENTER key: "
    gets.chomp.downcase
  end

  #TODO: handle passing args to inputted method. seperate method from args and only eval method.
  #TODO refactor monster classes to you don't need to handle hash monster differently
  # checks if user's input is a valid method for the object
  def valid_spell?(monster_object)
    if monster_object.class == HashMonster
      monster_object.monster.respond_to? method.to_sym
    elsif monster_object.class == StringMonster || ArrayMonster
      monster_object.name.respond_to? method.to_sym
    end
  end

  #TODO: fix array obj outputting as object array and not pretty string?
  def spell_cast_success_message(monster_object)
    "You cast the [#{input}] spell on #{monster_object.name}."
  end

  def spell_cast_failed_message(monster_object)
    "#{input} spell doesn't work on #{monster_object.name} because it's a #{monster_object.class}. Please try again."
  end
end
