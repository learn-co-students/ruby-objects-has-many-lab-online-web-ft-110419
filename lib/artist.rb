class Artist 
  attr_accessor :name 
  def initialize (name)
    @name = name 
  end
  def songs
    Song.all.select {|song|  song.artist == self }
  end
  def add_song(song)
    song.artist = self 
  end
  def add_song_by_name(title) 
    song = Song.new(title)
    song.artist = self #self is current artist
  end
  def self.song_count
    Song.all.collect {|song| song.artist == self}.count
  end
end



  