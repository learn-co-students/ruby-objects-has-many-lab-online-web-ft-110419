class Artist
 
  @@all = []

  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self 
  end

  def add_song_by_name(song)
   song = Song.new(name)
   song.artist = self
  def songs
    Song.all.select {|song| song.artist == self}
  end

end
