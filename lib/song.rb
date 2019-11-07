
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@artists << artist
    @@genres << genre
    
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artist_count
    object_count(@@artists)
  end
  
  def self.genre_count
    object_count(@@genres)
  end
  
  def self.bject_count(object)
    hash = {}
    
    object.each do |x|
      if hash.key?(x)
        hash[x] += 1
      else
        hash[x] = 1
      end
    end
    hash
  end
end