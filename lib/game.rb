# Responsibility: handle all game mechanics for resolving turns and wins/losses
# Collaborators: player.rb, monster.rb, spell_book.rb

# monsters do not have health. defeat via doing specific win condition!
class Game
  def show_monster(monster)
    puts "a #{monster.class} monster called the #{monster} has appeared!"
  end

  def show_monster_defeat_condition
    print "to defeat the monster you must..."
    print "make it smaller (lowercase)"
    puts
      #print "turn it into an ARRAY type monster"
  end

  def execute_spell(monster, spell)
    puts "You cast the #{spell} spell:"
    print "which turns the #{monster} into..."
    print eval ("'#{monster}'.#{spell}")
  end

end