class Author

  attr_accessor :name, :post


  def initialize(name)
    @name = name
  end

  def posts
    @posts = Post.all.find_all { |post| post.author == self  }
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    Post.new(post_title).author = self
  end

  def self.post_count
    Post.all.count
  end
end
