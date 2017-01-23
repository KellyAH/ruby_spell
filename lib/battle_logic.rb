class BattleLogice




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

