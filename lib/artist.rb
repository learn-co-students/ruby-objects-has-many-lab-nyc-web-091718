class Artist
  attr_reader  :name
  attr_accessor :songs
  @@artists = []

  def self.artists
      @@artists
  end

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def add_song(song)
    song.artist = self
    @songs <<song
  end

  def self.song_count
    sum = 0
      @@artists.each do |artist|
        sum += artist.songs.size
      end
      sum
  end

end #end of artist
