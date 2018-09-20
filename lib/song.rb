require 'pry'
class Song

  attr_accessor :name, :artist

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
  end

  def artist_name
    self.artist != nil ? self.artist.name : nil
  end
end #end Song
