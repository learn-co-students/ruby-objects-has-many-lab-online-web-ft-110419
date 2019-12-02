class Artist 
  attr_accessor :name, :songs
  @@song_count = 0 
 
   def initialize(name)
     @name = name 
     @songs = []
   end 
   def song
     @song
   end 
   
   def add_song(song)
     @songs << song 
     song.artist = self
     @@song_count += 1
   end 
   
   def add_song_by_name(song_name)
     song = Song.new(song_name)
     @song << song
     song.artist = self 
     @@song_count += 1
   end 
   
   def self.song_count
     @@song_count
   end 
   
   
 end 
 #want to call Adele and Beyonce
 #adele.songs and beyonce.songs
 
 
 