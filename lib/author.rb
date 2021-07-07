class Author
  attr_accessor :name
  @@posts = []
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts = Post.all.find_all {|song| song.author == self}
  end

  def self.post_count
    Post.all.count
  end



  def add_post(post_title)
    @posts << post_title
    post_title.author = self
    @@post_count += 1

  end

  def add_post_by_title(post_title)
    post= Post.new(post_title)
    @posts << post
    post.author = self
    @@post_count += 1
  end
end 
