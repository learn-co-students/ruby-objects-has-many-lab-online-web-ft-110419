class Post
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def author_name
    return @author == nil ? nil : @author.name
  end
  
  def self.all
    return @@all
  end
end
