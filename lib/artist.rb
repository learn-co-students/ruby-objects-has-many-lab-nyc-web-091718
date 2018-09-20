require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end


  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song)
    s1 = Song.new(song)
    s1.artist = self

  end

  def self.song_count
    Song.all.count
  end

end
