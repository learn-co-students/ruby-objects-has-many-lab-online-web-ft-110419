
class Author 
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts 
    Post.all.select {|posts| posts.author == self}
  end
  
  def add_post(new_post)
    new_post.author = self
  end
  
  def add_post_by_title(title)
    new_post = add_post(Post.new(title))
  end
  
  def self.post_count
    posts_with_author = Post.all.select {|posts| posts.author}
    posts_with_author.count
  end
  
end