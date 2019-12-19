class Song 
  attr_accessor :name, :artist, :genre
    @@artists = []
    @@genres = []
    @@count = 0
    @@artist_count = {}
    @@genre_count = {}
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
end