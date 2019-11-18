require 'pry'
class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def add_song(song)
    # takes in an argument of a song and associates that song with the artist by
    # telling the song that it belongs to that artist
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    # takes in an argument of a song name, creates a new song with it and
    # associates the song and artist
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    # is a class method that returns the total number of songs associated to all
    # existing artists
    Song.all.length
  end
end