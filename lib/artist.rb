class Artist
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def new_song(name, genre)
    new_song = Song.new
    new_song.artist = self
    new_song.genre = genre
    new_song.name = name
  end
  def songs
    @songs_of_this_artist = []
    Song.all.each do |song|
      if song.artist == self
        @songs_of_this_artist << song
      end
    end
    @songs_of_this_artist
  end
  def genres
    @genres_of_this_artist = []
    self.songs.each do |song|
      unique_genre = true
      @genres_of_this_artist.each do |existing_genre|
        if existing genre == song.genre
          unique_genre = false
        end
      end
      if unique_genre == true
        puts "I am about to put #{song.genre} into the @genres_of_this_artist array."
        @genres_of_this_artist << song.genre
      end
    end
    @genres_of_this_artist
  end
end
