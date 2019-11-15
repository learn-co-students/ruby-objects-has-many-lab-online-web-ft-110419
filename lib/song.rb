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
  
  def self.all 
    @@all 
  end
end