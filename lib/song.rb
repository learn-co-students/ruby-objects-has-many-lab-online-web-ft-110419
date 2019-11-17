class Song

  @@all = []

  attr_accessor :artist, :name 
  
  def initialize(name)
    self.name = name 
    @@all << self 
  end
 
  def self.all
    @@all
  end

  def artist_name
    self.artist.name if self.artist
  end 
  
end
