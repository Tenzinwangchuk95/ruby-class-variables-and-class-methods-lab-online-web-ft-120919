class Song 
  attr_accessor :name, :artist, :genre
    @@artists = []
    @@genres = []
    @@count = 0
    @@artist_count = {}
    @@genre_count = Hash.new(0)
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist #unless @@artists.include?(artist)
    @@genres << genre #unless @@genres.include?(genre)
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
  
  def self.genre_count
    @@genres.each do |v|
      @@genre_count[v] = 1
    end
    @@genre_count
  end
  
end