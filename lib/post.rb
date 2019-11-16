class Post 
    attr_accessor :title, :author

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def author=(name)
        @author = name 
    end

    def author 
        @author
    end

    def author_name()
        author.name
    end

    def self.all 
        @@all
    end
end