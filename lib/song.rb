require "pry"

class Song
attr_accessor :name, :artist, :genre

 @@count = 0
@@artists = []
@@genres = []



 def initialize (name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre

   @@artists << @artist
  @@genres << @genre
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
hash = Hash.new(0)
@@genres.each do  |type|
    hash[type] +=1
  end
hash
end

def self.artist_count
  hash = Hash.new(0)
  @@artists.each do  |art|
      hash[art] +=1
    end
  hash
  end

end
