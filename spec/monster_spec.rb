require_relative '../lib/string_monster'
require_relative '../lib/array_monster'
require_relative '../lib/hash_monster'

#TODO: add nagative path tests?
describe StringMonster do
  it "creates a single word monster name" do
    name = StringMonster.new(:single).name
    expect(name).to be_a_kind_of(String)
    expect(name.split.size).to be(1)
  end

  it "creates a multi word monster name" do
    name = StringMonster.new(:multi).name
    expect(name).to be_a_kind_of(String)
    expect(name.split.size).to be > 1
  end

  it "creates a random single or multi word monster name" do
    name = StringMonster.new(:random).name
    expect(name).to be_a_kind_of(String)
  end

  it "raises an error when invalid type param is passed" do
    expect {StringMonster.new(:invalid)}.to raise_error(StandardError)
  end

  it "creates an all uppercase single word monster name" do
    name = StringMonster.new(:single, :all_uppercase).name
    expect(name).to be_a_kind_of(String)
    expect(name).to eq(name.upcase)
  end

  it "creates an all lowercase multi word monster name" do
    name = StringMonster.new(:multi, :all_lowercase).name
    expect(name).to be_a_kind_of(String)
    expect(name).to eq(name.downcase)
  end

  it "raises an error when invalid format param is passed" do
    expect {StringMonster.new(:random, :invalid)}.to raise_error(StandardError)
  end

  describe '#arrival_message' do
    it 'creates a display message' do
      monster = StringMonster.new(:single)
      expect(monster.arrival_message).to eq("A #{monster.name} appears.")
    end
  end
end

describe ArrayMonster do
  it "creates a monster name" do
    expect(ArrayMonster.new.name_array).to be_a_kind_of(Array)
  end

  describe '#arrival_message' do
    it 'creates a display message' do
      monster = ArrayMonster.new
      expect(monster.arrival_message).to eq("A #{monster.name} appears.")
    end
  end

  describe '#reveal_object_message' do
    it 'creates a object display message' do
      monster = ArrayMonster.new
      expect(monster.reveal_object_message).to eq("Using arcane sight, you see the monster's true form is: #{monster.name_array}.")
    end
  end
end

describe HashMonster do
  it "creates a monster" do
    expect(HashMonster.new.monster).to be_a_kind_of(Hash)
  end

  describe '#arrival_message' do
    it 'creates a display message' do
      hash_monster = HashMonster.new
      expect(hash_monster.arrival_message).to eq(
        "A #{hash_monster.monster[:name]} with #{hash_monster.monster[:number_of_eyes]} eyes and #{hash_monster.monster[:number_of_arms]} arms appears."
                                           )
    end
  end

  describe '#reveal_object_message' do
    it 'creates a object display message' do
      hash_monster = HashMonster.new
      expect(hash_monster.reveal_object_message).to eq("Using arcane sight, you see the monster's true form is: #{hash_monster.monster}.")
    end
  end
end