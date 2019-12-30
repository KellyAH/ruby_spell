require_relative '../lib/string_monster'
require_relative '../lib/array_monster'
require_relative '../lib/hash_monster'

describe StringMonster do
  it "creates a monster name" do
    expect(StringMonster.new.name).to be_a_kind_of(String)
  end

  describe '#arrival_message' do
    it 'creates display message for a monster' do
      monster = StringMonster.new
      expect(monster.arrival_message).to eq("A #{monster.name} appears.")
    end
  end
end

describe ArrayMonster do
  it "creates a monster name" do
    expect(ArrayMonster.new.name_array).to be_a_kind_of(Array)
  end

  describe '#arrival_message' do
    it 'creates display message for a monster' do
      monster = ArrayMonster.new
      expect(monster.arrival_message).to eq("A #{monster.name} appears.")
    end
  end

  describe '#reveal_object_message' do
    it 'creates object display message' do
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
    it 'creates display message for a monster' do
      hash_monster = HashMonster.new
      expect(hash_monster.arrival_message).to eq(
        "A #{hash_monster.monster[:name]} with #{hash_monster.monster[:number_of_eyes]} eyes and #{hash_monster.monster[:number_of_arms]} arms appears."
                                           )
    end
  end

  describe '#reveal_object_message' do
    it 'creates object display message' do
      hash_monster = HashMonster.new
      expect(hash_monster.reveal_object_message).to eq("Using arcane sight, you see the monster's true form is: #{hash_monster.monster}.")
    end
  end
end