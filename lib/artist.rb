
class Artist
        # expect(adele.songs).to be_a(Array)
        # hello = Song.new("Hello")
        # hello.artist = adele
        # expect(adele.songs).to eq([hello])
        
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  
  def songs 
   check = Song.all.select {|song|
   if song.artist == @name
    return Array.new(Song.all)
   end
   }
  end
  
  def artist
    @name
  end
  
  
  
end