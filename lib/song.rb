require 'pry'

class Song

    attr_accessor :name, :artist, :genre

      @@all = []
      @@count = 0
      @@genres = []
      @@artists = []

    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@all << self
      @@count += 1
      @@genres << @genre
      @@artists << @artist
    end

  def self.all
    @@all
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
    @@all.map

  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) do |key, hash|
      hash[key] += 1
    end
  end

  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) do |key, hash|
      hash[key] += 1
    end
  end

end




# Song.new("99 Problems", "Jay-Z", "rap")
# Song.new("Lucifer", "Jay-Z", "rap" )
# Song.new("hit me baby one more time", "Brittany Spears", "pop")

# binding.pry
# "hahahaha"
