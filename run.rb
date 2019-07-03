require_relative "lib/Zoo.rb"
require_relative "lib/Animal.rb"

require 'pry'

bronx_zoo = Zoo.new("bronx zoo", "da bronx")
jardin = Zoo.new("paris zoo", "gay paree")

wolfy_the_wolf = bronx_zoo.new_animal("canis lupis", "35kg", "wolfy")
wolfy2 = bronx_zoo.new_animal("canis lupis", "45kg", "oy vey")
pierre_the_pelican = jardin.new_animal("pelicanus frenchicus", "20kg", "pierre")
wally_walrus = bronx_zoo.new_animal("walrus walrus", "350kg", "wally")

binding.pry
puts "done"
