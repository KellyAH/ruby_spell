# Responsibility: handle all game mechanics for resolving turns and wins/losses
# Collaborators: player.rb, monster.rb, spell_book.rb

# monsters do not have health. defeat via doing specific win condition!
class Game
  def show_monster(monster)
    puts "a #{create_monster.class} monster called the #{create_monster} has appeared!"
  end

  def show_monster_defeat_condition
    print "to defeat the monster you must..."
    print "turn it into an ARRAY type monster"
  end

  def execute_spell(spell)
  end

end