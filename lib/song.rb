class Song 
  attr_accessor :title, :artist
  
  @@all = []
  
  def initialize(title)
    @title = title
  end
  
  def artist=(artist)
    @artist = artist
  end
  
end