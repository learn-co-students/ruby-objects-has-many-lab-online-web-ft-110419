class Song 
  attr_accessor :name, :artist 
  @@all = []
    
    def initialize(name) 
      @name = name
      @@all = []
    end 
     
    def artist_name
      if @artist_name == nil 
        return nil 
      else 
        @artist_name
      end
    end
    
    def all
      @@all = []
    end
    
    def self.all
      @@song 
      self<<@@all = []
    end
  end 
    
    
  end 