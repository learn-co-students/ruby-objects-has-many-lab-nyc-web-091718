#require_relative './artist'

 class Song
   attr_accessor :name, :artist
  #
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, artist = nil)
     @name = name
     @artist = artist
     @@all << self
  end

  def artist_name
    if @artist != nil
      artist.name
    end
  end

 end
