class Genre
  @@all = []
  attr_reader :name
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def songs
    result_array = []
    Song.all.each do |song|
      if song.genre == self
        result_array << song
      end
    end
    result_array
  end
  def artists
    resulting_array = []
    self.songs.each do |song|
      unique_artist = true
      resulting_array.each do |existing_artist|
        if existing_artist == song.artist
          unique_artist = false
        end
      end
      if unique_artist == true
        resulting_array << song.artist
      end
    end
    resulting_array
  end
end
