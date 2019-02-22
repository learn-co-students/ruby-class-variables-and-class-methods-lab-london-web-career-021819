  class Song

    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []


    attr_accessor :name, :artist, :genre
    #attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@all << self
      @@count +=1
      @@genres << genre
      @@artists << artist

    end

    def self.all
      @@all
    end

    def self.count
      @@count
    end

    def self.genres
      @@genres.uniq
    end

    def self.artists
      @@artists.uniq
    end

    def self.genre_count
        results = Hash.new(0)
        @@genres.each do |genre|
          results[genre] += 1
        end
        results
    end

    def self.artist_count
      results = Hash.new(0)
      @@artists.each do |artist|
        results[artist] +=1
      end
      results
    end

  end
