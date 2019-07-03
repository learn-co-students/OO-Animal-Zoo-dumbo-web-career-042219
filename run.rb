require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
#ZOOS
bronx_zoo = Zoo.new("Bronx Zoo", "Bronx")
sd_zoo = Zoo.new("San Diego Zoo", "San Diego")
zoo_atlanta = Zoo.new("Zoo Atlanta", "Atlanta")

#ANIMALS
tiger_1 = Animal.new("tiger", 200, "Kat1")
tiger_2 = Animal.new("tiger", 200, "Kat2")
tiger_3 = Animal.new("tiger", 200, "Kat3")
elephant_1 = Animal.new("elephant", 1000, "Ellie1")
elephant_2 = Animal.new("elephant", 1000, "Ellie2")
elephant_3 = Animal.new("elephant", 1000, "Ellie3")
giraffe_1 = Animal.new("giraffe", 400, "Gerry1")
giraffe_2 = Animal.new("giraffe", 400, "Gerry2")
giraffe_3 = Animal.new("giraffe", 400, "Gerry3")

bronx_zoo.add_animal(tiger_1)
bronx_zoo.add_animal(elephant_1)
bronx_zoo.add_animal(giraffe_1)
sd_zoo.add_animal(tiger_2)
sd_zoo.add_animal(elephant_2)
sd_zoo.add_animal(giraffe_2)
zoo_atlanta.add_animal(tiger_3)
zoo_atlanta.add_animal(elephant_3)
zoo_atlanta.add_animal(giraffe_3)



binding.pry
puts "done"
