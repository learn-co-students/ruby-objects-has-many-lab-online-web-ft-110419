class Song
  @@all=[]

  attr_accessor :artist, :name

  def initialize(name)
    @name=name
    @artist=artist
    @@all << self
  end


  def self.all
    @@all
  end

  def artist_name
    if @artist == nil
      return nil
    else
      @artist.name
  end
end





end
