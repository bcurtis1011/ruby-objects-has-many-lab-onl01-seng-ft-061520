class Post
  
  attr_accessor :title, :author
  @@all = []
  
  def initialize(name)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_author(author)
    self.author = author
    author.post << self
  end
end