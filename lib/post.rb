class Post
  attr_accessor :title, :author, :all, :name
 
  @@all = []

  def initialize(title)
    @title = title
    @author = author
    @name = name
    save
  end
 
 def author_name
   if author
     author.name
    end
 end
 
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
end