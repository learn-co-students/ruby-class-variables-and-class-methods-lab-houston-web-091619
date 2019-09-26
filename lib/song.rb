class Songs

    attr_accessor :song, :artist, :genre

    @@all = []

    def initialize(song, artist, genre)
        @song = song
        @artist = artist
        @genre = genre
        @@all << self
    end



end