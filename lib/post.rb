class Post 
  attr_accessor :title
  @@all = []
  def initialize (title)
    @title = title
    @@all << self
  end
  def author 
    @author 
  end
  def author=(object)
    @author = object
  end
  def self.all
    @@all
  end
  def author_name
    if self.author == nil 
      nil
    else 
      @author.name
    end
  end
end