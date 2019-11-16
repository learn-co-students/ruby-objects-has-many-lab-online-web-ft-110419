class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(title)
    @name = title
    @@all << self
  end
  
  def artist=(name)
    @artist = name
  end
  
  def artist() 
    @artist
  end

  def artist_name()
    if artist 
        return artist.name 
    end 
end
  
  def self.all 
    @@all 
  end
end