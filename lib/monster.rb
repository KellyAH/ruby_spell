# Responsibility: manage creation of monster object type
# monsters do not have health. defeat via doing specific win condition!
# Collaborators: spawn_monster.rb
class Monster
  # generate and announce a monster
  def spawn_monster(type)
    case type
      when 'string'
        String.new("LARGE SNOWMAN: \u2603")
      when 'array'
        Array.new(5,'a')
      else
        puts "You glimpse the spikey tail of some mysterious monster. Before it disappears into shadows."
    end
  end

  # generate and announce a monster
  def announce_monster(monster)
    puts "a #{monster.inspect} jumps out of the shadows and runs straight for you!"
  end
end
