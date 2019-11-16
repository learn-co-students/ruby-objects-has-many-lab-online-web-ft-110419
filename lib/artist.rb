class Artist
  attr_accessor :name, :song
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    @songs = Song.all.find_all { |song| song.artist == self  }
  end


  def add_song_by_name(song_name)
    Song.new(song_name).artist = self
  end

   def self.song_count
     Song.all.count
   end


end
