class Player
  attr_reader :health

  def initialize
    @health = 5
  end

  def display_health
    p "Player Health: #{@health}"
  end

end

class Enemy
  attr_reader :data, :begin_state, :type, :defeat_condition, :defeat_state

  # create only 1 enemy!
  # TODO support multi enemy creation
  def initialize(enemy_type)

    # Decides which enemy is created
    case enemy_type
      when 'string_enemy'
        @data = {
            :begin_state => 'SLIME',
            :defeat_state => 'gooey slime',
            :defeat_condition => 'Make it smaller (all lowercase characters)'
        }
      when 'array_enemy'
        @data = {
            :begin_state => ['Harmless ','Serpent'],
            :defeat_state => 'Harmless Serpent',
            :defeat_condition => 'Connect the two words'
        }
      when 'hash_enemy'
        @data = {
            :begin_state => 'GOOEY SLIME',
            :defeat_state => 'gooey slime',
            :defeat_condition => 'Make it smaller (all lowercase characters)'
        }
    end

    # assign built monster data for easy retrieval
    @begin_state = @data[:begin_state]
    @type = @data[:begin_state].class
    @defeat_state = @data[:defeat_state]
    @defeat_condition = @data[:defeat_condition]
  end


  def announce_enemy
    p ("-" * 13) + "ENCOUNTER!" + ("-" * 13)
    p "A #{@data[:begin_state]} appears!"
    p "It is a #{data[:begin_state].class} monster type!"
    p "Defeat Condition: #{data[:defeat_condition]}."
  end

end

class Spell

  # get user spell input and sanatize it to use in eval method
  def self.query_for_spell
    p ("-" * 13) + "FIGHT!" + ("-" * 13)
    p "Enter what spell (ruby method) you want to invoke on the enemy:"
    user_input = gets.chomp
    user_input.to_s
  end

end

class BattleScreen

  def start_battle(enemy)
    spell = Spell.query_for_spell
    resolve_spell(enemy, spell)
  end

# TODO add evaluate valid method method before execute on enemy
  def resolve_spell(enemy, spell)
    enemy_begin_state = enemy.begin_state
    enemy_type = enemy.type
    enemy_defeat_state = enemy.defeat_state
    @result = nil

    if enemy_begin_state.respond_to?(spell)
      # p spell
      # p enemy_type
      # p enemy_begin_state

      announce_spell_cast_on_target(enemy_begin_state, spell)
      # TODO - only works for string obj. make work with hash and array
      @result = eval "'#{enemy_begin_state}'.#{spell}"
      p "enemy '#{enemy_begin_state}' turned into: '#{@result}'"

      if @result == enemy_defeat_state
        p 'YOU WON!'
      else
        p "YOUR SPELL Failed to defeat the enemy."
      end

    else
      @result = false
      p "#{spell} is a spell that doesn't work on #{enemy_type} enemy. YOUR SPELL had no effect. lose 1 health"
    end
  end

  private

  def announce_spell_cast_on_target(enemy_begin_state, spell)
    p "You invoked #{spell} Spell on #{enemy_begin_state}. In Ruby code it looks like this: #{enemy_begin_state}.#{spell}"
  end

end

joe = Player.new
joe.display_health

bot = Enemy.new('string_enemy')
bot.announce_enemy
# p bot.name
# p bot.type
# p bot.defeat_state

battle1 = BattleScreen.new
battle1.start_battle(bot)
