#   class Song
#   attr_accessor :name, :artist, :genre
#
#   @@count = 0
#   @@artists = []
#   @@genres = []
#
#
#  #Has a name, artist and genre
#   def initialize(name, artist, genre)
#     @name = name
#     @artist = artist
#     @genre = genre
#     @@count +=1
#     @@genres << genre
#     @@artists << artist
#   end
#
#
#   #is a class method that returns that number of songs created
#    def self.count  def self.count
#     @@count
#   end
#
#   #is a class method that returns a unique array of artists of existing songs
#   def self.artists
#     @@artists.uniq
#   end
#
#
#   #is a class method that returns a hash of artists
#   #and the number of songs that have those artists
#   def self.artist_count
#     artist_count = {}
#     @@artists.each do |artist|
#       if artist_count[artist]
#         artist_count[artist] += 1
#       else
#         artist_count[artist] = 1
#       end
#     end
#     artist_count
#   end
#
#   #is a class method that returns a unique array of genres of existing songs
#   def self.genres
#     @@genres.uniq
#   end
#
#
#   #is a class method that returns a hash of genres
#   #and the number of songs that have those genres
#   def self.genre_count
#     genre_count = {}
#     @@genres.each do |genre|
#       if genre_count[genre]
#         genre_count[genre] += 1
#       else
#         genre_count[genre] = 1
#       end
#     end
#     genre_count
#   end
# end



class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
end
