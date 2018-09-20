require 'pry'


class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

# How can an artist have many songs and a song belong to an artist? An individual song will need to have a reference to the a
# rtist it belongs to, meaning it will need to have an artist=() and artist method.
  # def artist=(artist)
  #   @artist = artist
  # end
  #
  #



  def artist_name
    if !self.artist
      nil
    else
      self.artist.name
    end
  end


end
