class Song 
  attr_accessor :name
  attr_reader :artist
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def artist=(artist)
    @artist = artist
    artist.songs << self
    Artist.song_count += 1
  end
  
  def artist_name
    if !self.artist
      return nil
    else 
      return self.artist.name
    end
  end
  
  def self.all
    @@all 
  end
end