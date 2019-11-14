require "pry"

class Artist
        # hello = Song.new("Hello")
        # hello.artist = adele
        # expect(adele.songs).to eq([hello])
        
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs=(title)
    new_song = Song.new(title)
    new_song.artist = @name
    @songs << new_song
    binding.pry
  end
  
  
  def songs 
    @songs
  end
  
  
  
end