# Learn Parameters
##new  -is initialized with a name
##name  -has an attr_accessor for name (FAILED - 2)

##songs -has many songs (FAILED - 3)
##add_song  -takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
##add_song_by_name  -takes in an argument of a song name, creates a new song with it and associates the song and artist
#.song_count  -is a class method that returns the total number of songs associated to all existing artists


class Artist
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    @songs << song
    song.artist = self
  end
  def songs
    Song.all.select {|song| song.artist == self}
  end
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
  def self.song_count
   Song.all.length
 end
end
