class Artist
  attr_accessor :name, :song, :songs
@@all = []

    def initialize(name)
      @name = name
      @songs = []
    end


    def add_song(song)
      @@all << song
      @songs << song
      song.artist = self
    end

    def add_song_by_name(song_name)
      self.add_song(Song.new(song_name))
    end

    def self.song_count
      @@all.count
    end




end
