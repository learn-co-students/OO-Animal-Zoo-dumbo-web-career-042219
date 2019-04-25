require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

bronx = Zoo.new("Bronx, NYC", "Bronx Zoo")
san_diego = Zoo.new("San Diego, CA", "San Diego Zoo")
jardin = Zoo.new("Paris, FR" , "Jardins Zoologiques")

polar_bear = bronx.new_animal("Ursus", "600lbs" , "Goodnight")
grizzly = bronx.new_animal("Ursus", "500lbs" , "Go2sleep")
jacques = jardin.new_animal("Pelicanus", "24lbs", "FishEater")

binding.pry
puts "done"
