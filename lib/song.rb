class Song
  attr_accessor :artist, :name, :all
 
  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    save
  end
 
  def artist_name
    if artist 
  artist.name
    end
  end
  
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
end