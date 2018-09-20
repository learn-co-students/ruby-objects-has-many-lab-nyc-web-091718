require 'pry'

class Artist

  attr_accessor :name, :songs, :artist

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    #binding.pry
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song_name)

    song = Song.new(song_name)
    song.artist = self
    self.songs << song
    #binding.pry
  end

  def self.song_count
    #binding.pry
    Song.all.count
  end

end
