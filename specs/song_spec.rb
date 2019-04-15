require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < Minitest::Test

def setup
@song1 = Song.new("Michael Jackson: Bad", "Pop Room")
end

def test_song_title_and_artist
  assert_equal("Michael Jackson: Bad", @song1.title_and_artist)
end



def test_song_room
  assert_equal("Pop Room" ,@song1.song_room)
end

end
