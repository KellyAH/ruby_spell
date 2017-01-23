class TitleScreen

  # displays game title screen
  def display_title_screen
    #display game title
    puts "-" * 120
    # created with http://patorjk.com/software/taag/#p=display&f=Twiggy&t=Ruby%20Spell
    title_banner = File.read('./lib/fancy_text/title01.txt')
    ## ALTERNATE TITLE FONTS ##
    #title_banner = File.read('./lib/fancy_text/title02.txt')
    #title_banner = File.read('./lib/fancy_text/title03.txt')

    puts title_banner

    puts "-" * 120
    puts "Created by Kelly Hong."
    puts "Built to help Ruby learners remember common ruby methods and object types."

    # thanks http://stackoverflow.com/questions/7233310/how-do-i-generate-the-copyright-symbol-in-ruby
    puts "All Rights Reserved \u00A9"
    puts "-" * 120

    #display title screen options
    title_screen_options
  end

  private

  # displays title screen options
  def title_screen_options
    puts "-" * 60
    puts "What do you want to do?"
    puts "N: New Game \t\t\t\tS: Stats"
    puts "-" * 60
    print "Choose one: "

    require "./lib/common"

    user_selection = Common.user_input
    resolve_title_screen_selection(user_selection)
  end

  # allows player to choose title screen option
  def resolve_title_screen_selection(user_selection)
    if user_selection.upcase == "N"
      require './lib/new_game'

      game = NewGame.new
      game.start_new_game
    elsif user_selection.upcase == "S"
      require './lib/game_stats'

      stats = GameStats.new
      stats.show_stats

      title_screen_options
    else
      puts "GAME MAKER SAYS: 'Sorry. Only NEW GAME and STATS options are available right now.'"
      title_screen_options

      require "./lib/common"
      get_user_input = Common.user_input

      resolve_title_screen_selection(get_user_input)
    end

  end



  # display game stats
  def show_game_stats
    stats = GameStats.new
    stats.show_stats

    title_screen_options
  end



end
