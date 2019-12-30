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
      expect(monster.arrival_message).to eq("A #{monster.name_string} appears.")
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
end