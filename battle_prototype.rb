# NOTES
# player smiley faces: https://kawaiiface.net/
# o(╥﹏╥)o
# monster graphics: http://1lineart.kulaone.com/#/ and http://asciimoji.com/
# bat /|\ ^._.^ /|\
# fish ><(((('>
# snake ¸.·´¯`·.´¯`·.¸¸.·´¯`·.¸(((º>
# bear  ʕっ•ᴥ•ʔっ
# 'ᕙ༼ ԾܫԾ ༽ᕗ'

class Game

  # def retry_game
  #   p 'Do you want to try again?'
  #   answer = get.chomp
  #   if answer == 'Y'
  #   else
  #     p 'GAME OVER'
  #   end
  # end
end

class Player
  attr_accessor :health

  def initialize
    @health = 5
  end

  def display_health
    p "Player Health: #{@health}"
  end

  def lose_health(health, value)
    @health = @health - value
    p "You lose #{value} Health. ★~ (◠︿◕)"
    p " Your Health is now: #{@health}."
    check_health_level
  end

  #TO DO add game over mechanic
  def check_health_level
    if @health <= 0
      p "You have 0 Health. (✖﹏✖)"
    end
  end

  # TODO - use later
  # def restore_full_health
  #   @health = 5
  #   p "You regain FULL Health! ♒(★‿★)♒
  #p  Your Health is now: #{@health}."
  # end

end

class Enemy
  attr_reader :data, :image, :begin_state, :type, :defeat_condition, :defeat_state

  # create only 1 enemy!
  # TODO support multi enemy creation
  def initialize(enemy_type)
    @enemy_data = fetch_random_enemy(enemy_type)

    @begin_state = @enemy_data[:begin_state]
    @type = @enemy_data[:begin_state].class
    @defeat_state = @enemy_data[:defeat_state]
    @defeat_condition = @enemy_data[:defeat_condition]

    display_enemy(@enemy_data)
  end

  def fetch_random_enemy(enemy_type)
    generate_monsters(enemy_type).sample
  end

  def display_enemy(enemy_data)
    p ("-" * 13) + "ENCOUNTER!" + ("-" * 13)
    p "#{enemy_data[:image]}"
    p "A #{enemy_data[:begin_state]} appears!"
    p "It is a #{enemy_data[:begin_state].class} monster type!"
    p "Defeat Condition: #{enemy_data[:defeat_condition]}."
  end

private

def generate_monsters(enemy_type)
    # Decides which enemy is created
  # to do store in yml file to keep DATA sepreate from CODE
    case enemy_type
      when 'string_enemy'
        @enemy_data = [{
            :image => '༼ ԾܫԾ ༽',
            :begin_state => 'SLIME',
            :defeat_state => 'slime',
            :defeat_condition => 'Make it smaller (all lowercase characters: downcase)'
        },
        {
            :image => 'ʕっ•ᴥ•ʔっ',
            :begin_state => 'bear',
            :defeat_state => 'BEAR',
            :defeat_condition => 'Make it bigger (all uppercase characters: upcase)'
        }
        # {
        #     :image => 'ʕっ*ᴥ*ʔっ',   
        #     :begin_state => 'Huge Angry Bear',
        #     :defeat_state => "'[\"Huge\", \"Angry\", \"Bear\"]'",
        #     :defeat_condition => 'Chop it up. (separate each word): split'
        # },
        # {
        #     :image => String.new("\u2603"),
        #     :begin_state => ' Snowman',
        #     :defeat_state => 'Sleepy Snowman',
        #     :defeat_condition => "Make it a Sleepy Snowman (prepend Sleepy to front of Snowman: prepend('Sleepy'))"
        # }
      ]
        
        # METHODS TO ADD
        # capitalize, swapcase, lstrip, rstrip, strip, chomp, chop, clear, reverse, delete, 

        # ADV METHODS TO ADD
        # each_line, gsub, slice, split, <<

        #   {
        #     :image => 'ʕ oᴥoʔ',
        #     :begin_state => 'Beary Sleepy',
        #     :defeat_state => 'Beary Sleepy Bear',
        #     :defeat_condition => 'Make it a Sleepy Bear (append Bear to end of Beary Sleepy: <<)'
        # }

        # ADV DETECTION METHODS TO ADD
        # empty?, end_with, each_line, include, length, start_with
      # when 'array_enemy'
      #   @enemy_data = {
      #       :begin_state => ['Harmless ','Serpent'],
      #       :defeat_state => 'Harmless Serpent',
      #       :defeat_condition => 'Connect the two words'
      #   }
      # when 'hash_enemy'
      #   @enemy_data = {
      #       :begin_state => 'GOOEY SLIME',
      #       :defeat_state => 'gooey slime',
      #       :defeat_condition => 'Make it smaller (all lowercase characters)'
      #   }
    end
  end

end

class Spell

  # get user spell input and sanitize it to use in eval method
  def self.query_for_spell
    p ("-" * 13) + "FIGHT!" + ("-" * 13)
    p "Enter what spell (ruby method) you want to invoke on the enemy:"
    user_input = gets.chomp
    user_input.to_s
  end

end

class BattleScreen

attr_reader :enemy_status

  # keep engaging battle until player health is gone or enemy defeated
  def initialize(player)
    # TODO ctrl how to make different enemy obj types
    enemy = Enemy.new('string_enemy')
    @enemy_status = 'alive' 
    
    while player.health > 0 && @enemy_status == 'alive'
      start_battle(player, enemy)  
    end

    @spell_failed = false
  end

private

  def start_battle(player, enemy)
    spell = Spell.query_for_spell
    resolve_spell(player, enemy, spell)
    if @spell_failed == true
      player.lose_health(player.health, 1)
    end
  end


  def resolve_spell(player, enemy, spell)
    enemy_begin_state = enemy.begin_state
    enemy_type = enemy.type
    enemy_defeat_state = enemy.defeat_state

    display_spell_and_enemy(enemy_begin_state, spell)
    evaluate_spell_on_enemy(player, enemy_begin_state, enemy_type, spell, enemy_defeat_state)

    # evaluate if spell defeats enemy or not
    if @result == enemy_defeat_state
      @enemy_status = 'dead'
      p 'YOU WON! Gain 1 gold coin ♨(⋆‿⋆)♨'
    else
      p "The '#{spell}' Spell failed to defeat the enemy. (◕︵◕)"
      @spell_failed = true
    end
  end

  # DO LATER?
  #   # check if method is available for object class
  # WARNING: won't work for 'x << y, or x.prepend('string')'
  #   if enemy_begin_state.respond_to?(spell)
  #     display_spell_and_enemy(enemy_begin_state, spell)
  #     evaluate_spell_on_enemy(enemy_begin_state, spell)


      # TODO - only works for string obj. make work with hash and array
  def evaluate_spell_on_enemy(player, enemy_begin_state, enemy_type, spell, enemy_defeat_state)
    # why did I use rescue? and not ...?
    begin
      @result = enemy_begin_state.send(spell)
      p "SEND CODE HERE"
      # @result = eval "'#{enemy_begin_state}'.#{spell}"
    p "'#{enemy_begin_state}' turned into: '#{@result}'"
    p "To defeat '#{enemy_begin_state}', you must turn it into: '#{enemy_defeat_state}'."
    # handle if inputted method is not a valid method for object
    rescue NoMethodError => e
      p "#{spell} is a spell that doesn't work on #{enemy_type} enemy. You cast #{spell} spell but nothing happens. o(╥﹏╥)o"
      @spell_failed = true 
    end
  end

  def display_spell_and_enemy(enemy_begin_state, spell)
    p "You invoked #{spell} Spell on #{enemy_begin_state}. In Ruby code it looks like this: '#{enemy_begin_state}'.#{spell}"
  end

end

joe = Player.new

battle1 = BattleScreen.new(joe)
