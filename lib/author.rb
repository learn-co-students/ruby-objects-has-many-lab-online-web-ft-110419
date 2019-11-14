require 'pry'
class Author
  attr_accessor  :name

  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select {|post_| post_.author == self }
  end
  
  def add_post(post_)
    post_.author = self
  end
  
  def add_post_by_title(title)
    post_ = Post.new(title)
    add_post(post_)
  end
  
  def self.post_count
    Post.all.count
  end
  
  
end