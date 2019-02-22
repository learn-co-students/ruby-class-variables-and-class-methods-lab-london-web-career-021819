require 'pry'

class Song

  # convention to put these first despite being instance variables
  attr_accessor :artist, :genre
  attr_reader :name

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.count # this is a class method, so call it on self
    @@count
  end

  def self.genres # return [] of unique genres only
    # array of genres
    # array.uniq
    @@genres.uniq
  end

  def self.genre_count # returns a hash
    # keys = genre names
    # values = count of songs in that genre
    # iterate over @@genres.
    genre_count = {}
    @@genres.each do |genre|
      if genre_count.has_key?(genre)
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count.has_key?(artist)
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

end
