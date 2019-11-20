#Learn Parameters
##new is initialized with an argument of a title
##new pushes new instances into a class variable called @@all upon initialization
#@@all is a class variable set to an array
#.all is a class method that returns an array of all post instances that have been created
##title has a title
##author belongs to an author
##author_name knows the name of its author
##author_name returns nil if the post does not have an author

class Post
  attr_accessor :author, :title
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end
  def self.all
    @@all
  end
  def author_name
    (self.author.nil?) ? nil : self.author.name
  end
end
