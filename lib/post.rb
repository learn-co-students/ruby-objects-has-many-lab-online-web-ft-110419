class Post
  @@all=[]

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @author = author
    @@all << self
  end

  def self.all
    @@all
  end

end
