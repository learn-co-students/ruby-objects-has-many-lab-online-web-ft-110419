class Artist
 attr_accessor :name, :songs



 def initialize(name)
   @name = name  # is initialized with a name
   @songs = []
 end

def songs
  Song.all.select {|song| song.artist == self} #songs has many songs
end

 def add_song(song)
#takes in an argument of a song and associates that song with the artist by telling the
# song that it belongs to that artist
  song.artist = self
 end

 def add_song_by_name(song_name) #takes in an argument of a song name, creates a new song with it and associates the song
                                    #  and artist
   song=Song.new(song_name)
   @songs << song
   song.artist = self
  end

 def self.song_count
  Song.all.count
 end
#a class method that returns the total number of songs associated to all existing artist
end
