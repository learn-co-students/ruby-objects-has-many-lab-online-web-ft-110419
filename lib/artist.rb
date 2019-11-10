class Artist
  attr_accessor :name
  
  @@count = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    return Song.all.select { |song| song.artist == self }
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@count += 1
  end
  
  def add_song_by_name(name)
    self.add_song(Song.new(name))
    @@count += 1
  end
  
  def self.song_count
    return @@count
  end
end
