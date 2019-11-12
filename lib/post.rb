class Post 
  attr_accessor :title
  attr_reader :author
  @@all = []
  
  def initialize(title)
    @title = title 
    @@all << self
  end
  
  def author=(author1)
    @author = author1 
    @author.posts << self
    Author.post_count += 1
  end
  
  def author_name
    if self.author 
      return self.author.name
    else 
      return nil 
    end 
  end
  
  def self.all 
    @@all
  end
  
end
    