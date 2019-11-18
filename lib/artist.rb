class Artist 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self 
  end 
  
  def songs 
    @songs = Song.all.find_all {|song| song.artist = self}
  end 
  
  def add_song(song)
    @songs << song
    song.artist = self 
  end 
  
  def add_song_by_name(song_title)
    song = Song.new(song_title)
    add_song(song)
  end 
  
  def self.song_count
    #class
    Song.all.count 
  end 
  
end 

