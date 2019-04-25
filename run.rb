require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

brookfield_zoo = Zoo.new("Brookfield Zoo", "Chicago")
lincoln_park_zoo = Zoo.new("Lincoln Park Zoo", "Chicago")
bronx_zoo = Zoo.new("Bronx Zoo", "The Bronx")
cute_panda = Animal.new("Panda", 200, "QT Panda", brookfield_zoo)
normal_panda = Animal.new("Panda", 200, "Normal Panda", brookfield_zoo)
cute_giraffe = Animal.new("Giraffe", 200, "QT Giraffe", brookfield_zoo)
ugly_panda = Animal.new("Panda", 200, "Ugly Panda", bronx_zoo)
normal_giraffe = Animal.new("Giraffe", 200, "Normal Giraffe", bronx_zoo)
ugly_giraffe = Animal.new("Giraffe", 200, "Ugly Giraffe", bronx_zoo)

binding.pry
puts "done"
