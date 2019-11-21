require "pry"
class Artist
  attr_accessor :name

  def initialize(name)
    @name=name
  end

  def songs
    #the belongs_to object, or the object that belongs_to something, keeps track of the relationship
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    name = Song.new(name)
    name.artist = self
  end

  def self.song_count
  songs_array  = Song.all.select {|song| song}
  songs_array.count
  end
end
