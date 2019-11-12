class Artist 
  attr_accessor :name, :songs
  @@number_of_songs_with_artists = 0
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end
  
  def self.song_count=(number) 
    @@number_of_songs_with_artists = number
  end
  
  def self.song_count 
    @@number_of_songs_with_artists
  end
end 