class Author 
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end
  
  def posts 
    Post.all.select do |posts|
     posts.author == self
    end
  end 
  
  def add_post(posting)
    posting.author = self 
  end 
  
  def add_post_by_title(title_name)
    the_post = Post.new(title_name)
    add_post(the_post)
  end

  def self.post_count
    Post.all.count
  end
  
end