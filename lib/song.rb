# Learn Parameters
##new is initialized with an argument of a name
##new pushes new instances into a class variable called @@all upon initialization
#@@all is a class variable set to an array
##name  -has a name
##artist  -belongs to an artist
##artist_name returns nil if the song does not have an artist

#.all is a class method that returns an array of all song instances that have been created
##artist_name knows the name of its artist
class Song
  attr_accessor :artist, :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def artist_name
    (self.artist.nil?) ? nil : self.artist.name
  end
end
