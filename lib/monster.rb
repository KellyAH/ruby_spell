# Responsibility: manage all monsters in the game and their stats (if any).
# monsters do not have health. defeat via doing specific win condition!
# Collaborators: game_logic.rb
class Monster
  def spawn_monster
    return String.new("EVIL SNOWMAN: \u2603")
  end

end