# R: keep track of player wins for each stage
# c : player, stage, battlelogic

class Scoreboard

  attr_accessor :win_count, :player

  def initialize
    @win_count = 0
    @player = player 1
    # create hash with
    scoreboard = hash,new
    stage_num => <win_count>
  end

  #display score for specifici player
  def display_scoreboard(player)

    scoreboard = hash,new
    stage_num => <win_count>
        1 => 10
    2 => 3
    3 => 3
  end


  #display score for specific player
  def udpate_scoreboard(player, stage_id, win_count)
    # get stage key value (win) and increment
    # update hash where key = stage_id, change value to updated win count



    1 => 10
    2 => 3
    3 => 3
  end

  # returns win count for particlar and player stage
  def stage_wins(stage_id, player)
  end

end



