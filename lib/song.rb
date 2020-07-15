class Song
  
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_artist(artist)
    self.artist = artist
    artist.song << self
  end

end