class Song

    @@all = []

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        self.artist ? self.artist.name : nil
    end
end