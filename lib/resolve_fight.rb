require_relative 'user_input'

# Responsibility: determine if spell changes monster object into expected result
# Collaborators:
class ResolveFight

  def initialize
    @win = false
  end

  #TODO: How do I make this cleaner and easier so the coupling of obj and data is clear and easier to see and debug?
  def resolve_spell_cast_on_monster(monster_object, solution_method)
    until @win == true
      user_input = UserInput.new

      if user_input.valid_spell?(monster_object)
        p user_input.spell_cast_success_message(monster_object)
        evaluate_expected_result(user_input.input.to_sym, monster_object.name, solution_method)
      else
        p user_input.spell_cast_failed_message(monster_object)
        #TODO add try again for user to input spell
      end
    end
  end

  private

  # REF: https://stackoverflow.com/questions/17454992/dynamic-method-calling-in-ruby
  def evaluate_expected_result(user_input, monster_object, solution_method)
    actual_result = monster_object.send user_input
    expected_result = monster_object.send solution_method
    if actual_result == expected_result
      p "you win!"
      @win = true
    else
      p "you lose"
    end
  end

end