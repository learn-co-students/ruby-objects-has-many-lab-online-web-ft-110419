class Author 
  attr_accessor :name
  def initialize (name)
    @name = name
  end
  def posts
    Post.all.select {|x| x.author == self }
  end
  def add_post(post_obj)
    post_obj.author = self
  end
  def add_post_by_title(title)
    post_obj = Post.new(title)
    post_obj.author = self
  end
  def self.post_count
    Post.all.collect {|x| x.author == self}.count
  end
end

