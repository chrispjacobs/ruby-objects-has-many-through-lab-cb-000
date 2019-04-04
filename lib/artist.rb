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
    resulting_songs = []
    Song.all.each do |song|
      if song.artist == self
        resulting_songs << song
      end
    end
    resulting_songs
  end
  def genres
    resulting_genres = []
    self.songs.each do |song|
      unique_genre = true
      resulting_genres.each do |existing_genre|
        if existing genre == song.genre
          unique_genre = false
        end
      end
      if unique_genre == true
        resulting_genres << song.genre
      end
    end
    resulting_genres
  end
end
