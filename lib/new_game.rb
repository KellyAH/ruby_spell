class NewGame

  def initialize
    puts "starting new game..."
  end

  # start a new game
  def start_new_game

    # TODO increment stats
    # stats = GameStats.new
    # stats.game_number += 1

    #print New game text
    new_game_banner = File.read('./lib/fancy_text/new_game.txt')
    puts new_game_banner
    intro = <<EOF
      There was a magician named, <NAME>,
      who skipped out on wizard school. 
      Because it was boring. 

      'I'm gonna learn by doing!' said the newbie spellcaster.
      
      This is what happened next.
EOF

    puts intro

    #print Player health & rank
    p1 = Player.new
    p1.show_stats

    #auto load stage 1
    forest = Stage.new("1")

  end
end