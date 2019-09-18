class Song

    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        hash = {}
        @@genres.each do |elem|
            if hash.include?(elem)
                hash[elem] += 1
            else
                hash[elem] = 1
            end
        end
        hash  
    end

    def self.artist_count
        hash = {}
        @@artists.each do |elem|
            if hash.include?(elem)
                hash[elem] += 1
            else
                hash[elem] = 1
            end
        end
        hash
    end

end