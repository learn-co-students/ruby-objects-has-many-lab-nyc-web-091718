require 'pry'

class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end # end initialize

  def self.all
    @@all
  end # end self.all

  def artist_name
    if self.artist # if self.artist exists/aka true
      self.artist.name
    else
      nil
    end # end if-else stmt
  end # end artist_name
end # end Song class
