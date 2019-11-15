class Artist
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def self.all 
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self
  end
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
end