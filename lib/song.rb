require "pry"

class Song

  attr_accessor :artist, :name, :genre

@@count = 0

@@artists = []

@@genres = []

@@names = {}

@@genre_count = {}

  def initialize(name, artist, genre)
    @artist = artist
    @name = name
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
  end

  def self.count
    @@count
  end
#@@artists << self.artists
#@@genre = self.genre

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hash = Hash.new(0)
    @@genres.each do
      |genre| genre_hash.store(genre, genre_hash[genre]+1)
    end
    genre_hash
  end

  def self.artist_count
    song_hash = Hash.new(0)
    @@artists.each do
      |name| song_hash.store(name, song_hash[name]+1)
    end
    song_hash
  end

end
