class Song
  attr_reader :title_and_artist, :song_room

  def initialize(title_and_artist, song_room)
    @title_and_artist = title_and_artist
    @song_room = song_room
  end
  
end
