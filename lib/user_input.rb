# Responsibility: capture and validate user input
# Collaborators:
class UserInput

  attr_reader :input

  def initialize
    print "Type out the name of the spell you wish to cast and press ENTER key: "
    @input = gets.chomp
  end

  def display
    p "You cast #{@input} spell."
  end

  def validate_input(monster_object)
    # check if user's input is a valid method for the object
    #
  end
end
