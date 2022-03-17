require "track"

RSpec.describe Track do
  it "matches title when given a keyword" do
    track_1 = Track.new("Happy Day", "Pharrel")
    expect(track_1.matches?("Happy")).to eq true
  end
  it "matches artist when given a keyword" do
    track_1 = Track.new("Happy Day", "Pharrel")
    expect(track_1.matches?("Pharrel")).to eq true
  end
  it "returns false when no matches" do
    track_1 = Track.new("Happy Day", "Pharrel")
    expect(track_1.matches?("Fun")).to eq false
  end
end
