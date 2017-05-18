require 'pry'


class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
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

#define the class method
def self.genre_count
# this sets a variable to the class variable that holds all the genres. importantly
# it doens't get set to the value of of Song.genres, because that would call the previous
# method. if we did that it would return a 'uniqified' array and just give us one for every value.
    x = @@genres
#this one sets genres as a new hash. we're going to iterate over all the genres and populate this hash
# and eventually return it.
    genres = Hash.new{}
# we iterate over the @@genres array.
    x.each {|genre|
# this whole block makes the keys and values. first, if a genre, like rap, is already
# present in the hash as a key, then it'll add one to the value. But the process
# would actually start below, in the else part. If the genre isn't already in the hash,
# then ruby goes does to the else. if it's not there, it makes the key ahd sets it to one.
      if genres[genre]
        genres[genre]+=1
      else
        genres[genre] = 1
      end

    }
    # binding.pry

genres
  end


  def self.artist_count
    x = @@artists
    y = Hash.new
    x.each do |artist|
      if y[artist]
        y[artist] += 1
      else
        y[artist] = 1
      end
    end
    y
  end

end






# class Song
#   attr_accessor :name, :artist, :genre
#
#   @@count = 0
#   @@genres = []
#   @@artists = []
#
# def initialize(name, artist, genre)
#   @@count += 1
#   if @@genres.include?(genre) == false
#     @@genres << genre
#   end
#
#   @name = name
#
#   @artist = artist
#   if @@artists.include?(artist) == false
#     @@artists << artist
#   end
#
#
#   @genre = genre
# end
#
# def self.count
#   @@count
# end
#
#
#
# end
