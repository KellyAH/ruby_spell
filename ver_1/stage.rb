# Responsibility: manage stage data (name, #, monster type)
# Collaborators: game_logic.rb
class Stage

  attr_accessor :stage_name, :stage_number, :monster_type

  # set stage data
  def initialize(number, name, monster_type)
    @stage_number = number
    @stage_name = name
    @monster_type = monster_type
  end

  # display stage info
  def display_stage_info
    puts "WELCOME to Stage ##{@stage_number}."
    puts "The #{@stage_name}."
    puts "Here you'll find #{@monster_type} monsters!"
  end
end
