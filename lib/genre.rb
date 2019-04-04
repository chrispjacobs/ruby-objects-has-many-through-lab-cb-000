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
    result_array = []
    self.songs.each do |song|
      unique_artist = true
      result_array.each do |existing_artist|
        if existing_artist == song.artist
          unique_artist = false
        end
      end
      if unique_artist == true
        result_array << song.artist
      end
      result_array
    end
  end
end
