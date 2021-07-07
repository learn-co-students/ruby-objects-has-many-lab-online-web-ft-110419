class Post
    attr_accessor :title, :author

    @@all =[]
    def initialize (name)
    @name = name
    @@all << self
    end

    def self.all
      @@all
    end  
    
    def title
      @title = 'My Blog Post!'
    end

      def author_name 
       if author == nil
        return nil
       else author.name
       end
      end
      

end