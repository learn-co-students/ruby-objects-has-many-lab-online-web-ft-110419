class Post
      attr_accessor :title, :author
      @@all = []
      
    def initialize(title)
      @title = title 
      @@all << self
    end
    
    def self.all
        @@all
    end
    
    def author_name
      author.name if author
      # author ? author.name : nil
      # if author exist return name if not return nil
    end
  
end