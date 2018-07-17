require 'pry'

class Song 
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist #unless @@artists.include?(artist)
    @@genres << genre
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
    genre_array = Hash.new

    @@genres.each do |genre| 
      genre_array[genre]? genre_array[genre] += 1 : genre_array[genre] = 1
    end
    genre_array
  end
  
  def self.artist_count
    genre_array = Hash.new

    @@genres.each do |genre| 
      genre_array[genre]? genre_array[genre] += 1 : genre_array[genre] = 1
    end
    genre_array
  end  
  
end































