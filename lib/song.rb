require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize 
        @name= name
        @artist= artist
        @genre= genre
        @@genres << genre
        @@artists << artist
        @@count += 1
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
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count += 1
            else 
                genre_count[genre] = 1
            end
        end
    end
    genre_count

    # note: if we used "tally" instead, it would just be:
    # @@genres.tally

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count += 1
            else
                artist_count = 1
            end
        end
    end
    artist_count

    # note: if we used "tally" instead, it would just be:
    # @@artists.tally
end