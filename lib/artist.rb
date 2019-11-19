class Artist
 attr_accessor :name


 def initialize(name)
   @name = name
   @songs = []
 end

def songs
  Song.all.select {|song| song.artist == self} #songs has many songs
end

 def add_song(song)
  @songs << song
  song.artist = self
 end

 def add_song_by_name(song_name)
   song=Song.new(song_name)
   @songs << song
   song.artist = self
 end


 end
