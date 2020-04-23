class Song
  attr_reader :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def artist_name 
    if @artist
      @artist.name
    else 
      nil
    end
  end

  def artist=(artist)
    artist.songs << self
    @artist = artist
  end

end

