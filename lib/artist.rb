class Artist
  attr_accessor :name, :songs
  @@songs = 0
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(new_song)
    new_song.artist = self
    self.songs << new_song
    @@songs += 1
  end

  def add_song_by_name(new_song_name)
    new_song = Song.new(new_song_name,self)
    self.songs << new_song
    @@songs += 1
  end

  def self.song_count
    @@songs
  end

end #end of Artist class
