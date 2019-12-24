require 'minitest/autorun'
require 'minitest/spec'
require_relative 'test_helper'
require_relative '../app/lib/string_monster'
require_relative '../app/lib/array_monster'
require_relative '../app/lib/hash_monster'

# https://github.com/wojtekmach/minitest-matchers
# https://github.com/rmm5t/minitest-matchers_vaccine

describe StringMonster do
  it "can be created" do
    StringMonster.new.name.must_be_instance_of String
  end

  it "can create arrival_message" do
    monster = StringMonster.new
    assert_equal "A #{monster.name} appears.", monster.arrival_message
  end
end

describe ArrayMonster do
  it "can be created" do
    ArrayMonster.new.name_array.must_be_instance_of Array
  end

  it "can create arrival_message" do
    monster = ArrayMonster.new
    assert_equal "A #{monster.name_string} appears.", monster.arrival_message
  end
end

describe HashMonster do
  it "can be created" do
    HashMonster.new.monster.must_be_instance_of Hash
  end
end

#
#   it "can be created with a specific size" do
#     Array.new(10).size.must_equal 10
#   end
# end
#
# class MonsterTest < Minitest::Test
#   def string_monster_returns_a_string
#     monster = StringMonster.new
#     assert monster.class == String
#   end
# end