class Zoo

attr_reader :name, :location

@@all = []

def initialize(name, location)
	@name = name
	@location = location
	@@all << self
end

	def self.all
	@@all
	end

	def new_animal(species, weight, nickname)
		Animal.new(species, weight, nickname, self)
	end

	def animals
    	Animal.all.select do |animal|
    		animal.zoo == self
    	end
  	end

	def animal_species
		arr = Animal.all.select do |animal|
    	 animal.zoo == self
end
    	arr2 = arr.map do |animal|
    	 	animal.species
   		 end
   		arr2.uniq 
	end

	def find_by_species(input)
	arr = Animal.all.select do |animal|
    	animal.zoo == self
end
    arr2 = arr.select do |animal|
    animal.species == input 
    	end
    arr2
end

	def animal_nicknames
	arr = Animal.all.select do |animal|
    	animal.zoo == self
end
    arr2 = arr.map do |animal|
    		animal.nickname 
    	end
end

	def self.find_by_location(argument)
	Zoo.all.select do |zoo|
		zoo.location == argument
	end
 	end
end