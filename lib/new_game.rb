# Responsibility: manage new game state, actions, data
# Collaborators:
class NewGame

  attr_accessor :player_one

  def initialize
    require './lib/player'
    @player_one = Player.new

  end

  # setup a new game
  def start_new_game
    # TODO: increment stats
    # stats = GameStats.new
    # stats.game_number += 1

    # create new player


    # print New game text
    new_game_banner = File.read('./lib/fancy_text/new_game.txt')
    puts new_game_banner

    # display into story
    puts display_intro(@player_one.name)

    # auto load stage 1
    require './lib/stage'
    Stage.new(1, 5, @player_one)
  end

  # display intro story
  def display_intro(name)
    <<EOF
      There was a great magician named, #{name} the Wise.
      #{name}'s spell books were stolen by an evil rival sorcerer and scattered across the land. 
      #{name} sensed a magical tome was nearby, and set off to recover it. 
      
      This is #{name}'s story...

EOF
  end
end
