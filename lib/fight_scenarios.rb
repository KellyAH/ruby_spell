# Responsibility: store data used in setting the fight scene
# Collaborators:
class FightScenarios
  attr_reader :string_monster_fight_scenarios

  def initialize
    @string_monster_fight_scenarios = string_monster_fights
  end

  def string_monster_fights
    [
        {
            :win_description => "chop it into pieces",
            :solution_method => :split,
            :monster_type => :multi
        },
        {
            :win_description => "make it smaller (all letters lowercase)",
            :solution_method => :downcase,
            :monster_type => :random,
            :monster_format => :all_uppercase
        },
        {
            :win_description => "make it so large it topples over (all letters in uppercase)",
            :solution_method => :upcase,
            :monster_type => :random,
            :monster_format => :all_lowercase
        }
    ]
  end

end


# NOTE other 1 step win scenarios to consider
# prepend "dead" to monster name to make "slime" -> "dead slime"
# delete / clear it
# run thru pages in the ruy way book
# cut off "tail" of monster -> "big monster with long tail" -> big monster
# mutate a monster by increasing its arms and eyes to too many -> just change hash value
# disable via reduce arms and eyes to 0?
#
#
# new feature: 2 step win conditions?
#