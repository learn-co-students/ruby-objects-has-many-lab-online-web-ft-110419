require 'pry'
class Author

    attr_accessor :name, :posts

    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        @posts = Post.all.select { |post| post.author == self }
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        Post.new(title).author = self
    end

    def self.post_count
        Post.all.count
    end
end