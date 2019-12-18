# Responsibility: handle displaying title screen and info and options
# Collaborators:
class TitleScreen

  # displays game title screen
  def initialize
    display_title
    display_disclamer
    display_title_screen_options
  end

  private

  def display_title
    puts '-' * 120
    # created with http://patorjk.com/software/taag/#p=display&f=Twiggy&t=Ruby%20Spell
    title_banner = File.read('./ver_1/fancy_text/title01.txt')
    ## ALTERNATE TITLE FONTS ##
    #title_banner = File.read('./ver_1/fancy_text/title02.txt')
    #title_banner = File.read('./ver_1/fancy_text/title03.txt')

    puts title_banner
  end

  def display_disclamer
    puts '-' * 120
    puts "Created by Kelly Hong."
    puts "Built to help Ruby learners remember common ruby methods and object types."

    # thanks http://stackoverflow.com/questions/7233310/how-do-i-generate-the-copyright-symbol-in-ruby
    puts "All Rights Reserved \u00A9"
    puts '-' * 120
  end

  # displays player greeting
  # def display_greeting(player_name)
  #   puts '-' * 60
  #   puts "Hi #{player_name}! Welcome to Ruby Spell!"
  # end

  # displays title screen options
  def display_title_screen_options(player_name = 'Player 1' )
    puts 'Please choose an option:'
    puts 'Enter a letter and press Enter key on your keyboard.'
    puts
    puts "[N] - New Game \t\t\t\t[S] - Stats"
    puts '-' * 60
    print 'Choose one: '

    require "./ver_1/user_input"

    user_selection = UserInput.user_input
    resolve_title_screen_selection(user_selection)
  end

  # allows player to choose title screen option
  def resolve_title_screen_selection(user_selection)
    if user_selection.upcase == 'N'
      require './lib/new_game'

      game = NewGame.new
      game.start_new_game
    elsif user_selection.upcase == 'S'
      require './lib/game_stats'

      stats = GameStats.new
      stats.show_stats

      display_title_screen_options
    else
      puts "GAME MAKER SAYS: 'Sorry. Only NEW GAME and STATS options are available right now.'"
      display_title_screen_options

      require "./ver_1/user_input"
      get_user_input = UserInput.user_input

      resolve_title_screen_selection(get_user_input)
    end
  end

  # display game stats
  def show_game_stats
    stats = GameStats.new
    stats.show_stats

    display_title_screen_options
  end
end
