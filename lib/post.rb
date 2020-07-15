class Post
  
  attr_accessor :name, :author
  @@all = []
  
  def initialize(name)
    @name = name
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