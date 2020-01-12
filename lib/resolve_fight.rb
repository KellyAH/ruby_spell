require_relative 'user_input'

# Responsibility: determine if spell changes monster object into expected result
# Collaborators:
class ResolveFight

  def initialize
    @win = false
  end

  # IN PROGRESS: execute method with args too
  #TODO: How do I make this cleaner and easier so the coupling of obj and data is clear and easier to see and debug?
  def resolve_spell_cast_on_monster(monster_object, solution_method)
    until @win == true
      input = UserInput.new
      inputted_method = input.method
      inputted_args = input.args

      if inputted_method.valid_spell?(monster_object)
        p inputted_method.spell_cast_success_message(monster_object)
        evaluate_expected_result(inputted_method.to_sym, inputted_args.to_sym, monster_object.name, solution_method)
      else
        p inputted_method.spell_cast_failed_message(monster_object)
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
      p "the #{monster_object} was defeated. You turned it into #{actual_result}."
      @win = true
    else
      p "Your [#{user_input.to_s}] spell failed. Try again"
      #TODO:ouput what monster wouldve looked like with your wrong spell and what it should look like for win condition
    end

    #TODO: add handle hash monster
  end

end