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
        puts author.name == nil
    end

    def self.all 
        @@all
    end
end