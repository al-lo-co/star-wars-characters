require 'rails_helper'

RSpec.describe Character, type: :model do
  character1 = {
    "name": "Luke Skywalker",
    "gender": "male",
    "skin_color": "fair",
    "hair_color": "blond",
    "height": "172",
    "eye_color": "blue",
    "mass": "77",
    "birth_year": "19BBY",
    "id": 1
  }
  it "is valid with valid attributes" do
    expect(Character.new(character1)).to be_valid
  end

  it "is not valid without a name" do
    character2 = character1
    character2['name'] = nil
    expect(Character.new(character2)).to_not be_valid
  end
  
  it "is not valid without a height" do
    character2 = character1
    character2['height'] = nil
    expect(Character.new(character2)).to_not be_valid
  end

  it "is not valid without a mass" do
    character2 = character1
    character2['mass'] = nil
    expect(Character.new(character2)).to_not be_valid
  end

  it "is not valid without a Birth year" do
    character2 = character1
    character2['birth_year'] = nil
    expect(Character.new(character2)).to_not be_valid
  end
end
