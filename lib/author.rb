class Author
  
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def self.all
    @@all
  end
  
  def add_post(post)
    self.posts << post
    post.author = self
  end
  
  def add_post_by_title(name)
    post = Post.new(name)
    post.author = self
  end
end