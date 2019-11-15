class Song 
  attr_accessor :title, :name
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def artist=(name)
    @name = name
  end
  
  def artist() 
    @name
  end
  
  def self.all 
    @@all 
  end

end
