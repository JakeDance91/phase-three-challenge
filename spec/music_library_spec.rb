require "music_library"

RSpec.describe "music library" do
  context "When we add a single track" do
    it "returns a list with that one track" do
      library = MusicLibrary.new
      track_1 = double :track
      library.add(track_1)
      result = library.all
      expect(result).to eq [track_1]
    end
  end
  context "When we add multiple tracks" do
    it "returns a track based on a key word" do
      library = MusicLibrary.new
      track_1 = double :track, matches?: false
      track_2 = double :track, matches?: true
      library.add(track_1)
      library.add(track_2)
      expect(library.search("Happy")).to eq [track_2]
    end
  end
end