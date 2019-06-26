require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
bronx_zoo = Zoo.new("Bronx Zoo","New York")
bronx_zoo = Zoo.new("Central Park","New York")
not_a_zoo = Zoo.new("A hospital","Chicago")
giraffe = Animal.new("Giraffe", 600, "Jerry", bronx_zoo)
giraffe2 = Animal.new("Giraffe", 600, "Gerry", bronx_zoo)
lion = Animal.new("Lion", 1500, "Larry", bronx_zoo)
helen = Animal.new("Human", 600, "Helen", not_a_zoo)

binding.pry
puts "done"
