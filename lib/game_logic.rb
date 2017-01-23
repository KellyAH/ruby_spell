# Responsibility: handle all game mechanics for resolving turns and wins/losses
# Collaborators: player.rb, monster.rb, spell_book.rb

# monsters do not have health. defeat via doing specific win condition!
class GameLogic
  # overall game program attributes
  def initialize
    require './lib/screens/title_screen'
    title = TitleScreen.new
    title.display_title_screen
  end

  # generate stage
  def create_stage
    Stage.new
  end

  # generate monster
  def spawn_monster
    m01 = SpawnMonster.new
    m01.show_monster
  end
end
