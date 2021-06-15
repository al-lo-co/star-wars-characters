require 'rails_helper'

RSpec.describe Film, type: :model do
  film = {
    "producer": "Gary Kurtz, Rick McCallum",
    "title": "A New Hope",
    "episode": 4,
    "director": "George Lucas",
    "release_date": "1977-05-25",
    "characters": [
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      12,
      13,
      14,
      15,
      16,
      18,
      19,
      81
    ],
    "id": 1
  }

  it "is valid with valid attributes" do
    expect(Film.new(producer: film[:producer], title: film[:title], episode: film[:episode], director: film[:director],release_date: film[:release_date], character_ids: film[:characters])).to be_valid
  end
  

  it "is not valid without a producer" do
    expect(Film.new(title: film[:title], episode: film[:episode], director: film[:director], release_date: film[:release_date], character_ids: film[:characters])).to_not be_valid
  end
  
  it "is not valid without a title" do
    expect(Film.new(producer: film[:producer],  episode: film[:episode], director: film[:director], release_date: film[:release_date], character_ids: film[:characters])).to_not be_valid
  end

  it "is not valid without a episode" do
    expect(Film.new(producer: film[:producer], title: film[:title], director: film[:director], release_date: film[:release_date], character_ids: film[:characters])).to_not be_valid
  end

  it "is not valid without a Birth director" do
    expect(Film.new(producer: film[:producer], title: film[:title], episode: film[:episode], release_date: film[:release_date], character_ids: film[:characters])).to_not be_valid
  end

end
