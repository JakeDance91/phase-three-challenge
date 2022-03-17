require "music_library"
require "track"

RSpec.describe "integration" do
  context "When we add a single track" do
    it "returns a list with that one track" do
      library = MusicLibrary.new
      track_1 = Track.new("Speechless World", "MJ")
      library.add(track_1)
      result = library.all
      expect(result).to eq [track_1]
    end
  end
  context "When we add multiple tracks" do
    it "returns a list with multiple tracks" do
      library = MusicLibrary.new
      track_1 = Track.new("Speechless World", "MJ")
      track_2 = Track.new("Happy Day", "Pharrel")
      library.add(track_1)
      library.add(track_2)
      result = library.all
      expect(result).to eq [track_1, track_2]
    end
    it "returns a track based on a key word" do
      library = MusicLibrary.new
      track_1 = Track.new("Speechless World", "MJ")
      track_2 = Track.new("Happy Day", "Pharrel")
      library.add(track_1)
      library.add(track_2)
      result = library.search("Happy")
      expect(result).to eq [track_2]
    end
  end
end