require "pry"
class Artist
  attr_accessor :name

  def initialize(name)
    @name=name
    @songs=[]

  end
  def songs
    @songs
  end
  def add_song(song)
      song.artist = self
      self.songs.push(song)
      @songs<<song

  end
  def add_song_by_name(name)

  end

end
