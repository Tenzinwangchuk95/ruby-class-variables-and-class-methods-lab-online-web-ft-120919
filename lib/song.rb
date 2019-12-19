class Song 
  attr_accessor :name :artist :genre
    @@artists = []
    @@genres = []
    @@count = 0
    @@artist_count = {}
    @@genre_count = {}
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count =+ 1
  end
  
  def self.count
    @@count
  end