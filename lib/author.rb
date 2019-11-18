class Author 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @posts = []
    @@all << self 
  end 
  
  def posts 
    @posts = Post.all.find_all {|post| post.author == self}
  end 
  
  def add_post(post)
    @posts << post
    post.author = self  
  end 
  
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    add_post(post)
  end 
  
  def self.post_count
    #class
    Post.all.count 
  end 
  
end 

