class Song 
  attr_accessor :title, :artist
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def artist=(artist)
    @@all << artist
  end
  
  def self.all()
    @@all
  end
end
