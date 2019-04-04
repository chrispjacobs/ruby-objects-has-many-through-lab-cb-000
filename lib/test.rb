require_relative 'artist.rb'
require_relative 'genre.rb'
require_relative 'song.rb'

heavy_metal = Genre.new("heavy metal")
punk = Genre.new("punk")
meshuggah = Artist.new("Meshuggah")
system_of_a_down = Artist.new("System of a Down")
sleater_kinney = Artist.new("Sleater Kinney")
meshuggah.new_song("Ivory Tower", heavy_metal)
meshuggah.new_song("Koloss", heavy_metal)
system_of_a_down.new_song("Bounce!", heavy_metal)
# puts "system_of_a_down.songs returns #{system_of_a_down.songs}"
# puts "meshuggah.songs returns #{meshuggah.songs}"
# sleater_kinney.new_song("Dig Me Out", punk)
# puts "heavy_metal.artists returns #{heavy_metal.artists}"
obzen = Song.new("Obzen", meshuggah, heavy_metal)
puts "obzen.genre returns #{obzen.genre}"
