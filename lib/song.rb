class Song 
  attr_accessor :name, :title
  @@all = []
  def initialize(name)
    @name = name
    @@all << self #shovels insance into array collection
  end
  def artist #reader
    @artist #creates instance variable
  end
  def artist=(artist_obj) #writer
    @artist = artist_obj #assigns the argument as a the value for the insatnce 
  end
  def self.all #retrieves array collection
    @@all
  end
  def artist_name
    if self.artist == nil 
      nil
    else 
      @artist.name
    end
  end
end