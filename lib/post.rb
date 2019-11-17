class Post

  @@all = []
 
  attr_accessor :author, :title 

  def initialize(title)
    self.title = title
    @@all << self 
  end

  def self.all
    @@all
  end

  def author_name
    self.author.name if self.author
  end

end 
