require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
animal_1 = Animal.new("nick","cat",100)
animal_2 = Animal.new("doug","dog",200)
animal_3 = Animal.new("james","fish",400)
animal_4 = Animal.new("ryan","bird",500)


zoo_a = Zoo.new("a","NY")
zoo_b = Zoo.new("b","BK")
zoo_c = Zoo.new("c","BX")

animal_1.zoo = zoo_a
animal_2.zoo = zoo_b
animal_3.zoo = zoo_c
animal_4.zoo = zoo_c

binding.pry
puts "done"
