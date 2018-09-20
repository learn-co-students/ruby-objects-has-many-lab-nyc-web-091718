require 'pry'

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @song = []
  end # end initialize

  def songs
    @song
  end #end songs

  def add_song(song)
    @song << song
    song.artist = self
  end # end add_song

  def add_song_by_name(song)
    song = Song.new(song)
    @song << song
    song.artist = self
  end # end add_song_by_name

  def self.song_count
    Song.all.count
  end # end self.song_count

end # end Artist class
