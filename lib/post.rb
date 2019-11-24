require 'pry'
class Post

attr_accessor :author, :name
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def title
    @name
  end

  def author_name
    if self.author.nil?
      nil
    else
      self.author.name
    end
  end


end
