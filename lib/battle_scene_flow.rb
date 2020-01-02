require_relative 'fight_scenarios'
require_relative 'resolve_fight'
require_relative 'string_monster'
# require_relative 'array_monster'
# require_relative 'hash_monster'

# Responsibility: manage all data needed to just setup a fight w/ a monster.
# Does NOT handle resolving the fight
# Collaborators: monster classes
class BattleSceneFlow
  def initialize
    ##
    # SET THE STAGE
    #
    # fetch setup data
    string_scenarios = FightScenarios.new.string_monster_fight_scenarios

    # Choose random fight conditions
    random_scene = string_scenarios.sample

    # spawn required monster type
    monster = StringMonster.new(random_scene[:monster_type], random_scene[:monster_format])
    p monster.arrival_message

    # announce win condition description
    def win_condition_message(win_description)
      "To defeat this monster, you must #{win_description}."
    end

    p win_condition_message(random_scene[:win_description])

    ##
    # PROMPT USER TO INPUT A SPELL TO CAST ON MONSTER
    # RESOLVE SPELL CASTED ON MONSTER
    #
    resolution = ResolveFight.new
    resolution.resolve_spell_cast_on_monster(monster, random_scene[:solution_method])
  end
end