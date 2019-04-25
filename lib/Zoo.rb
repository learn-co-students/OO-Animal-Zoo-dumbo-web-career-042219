class Zoo
	
	attr_reader :name, :location

	@@all = []

	def initialize (name, location)
		@name = name
		@location = location
		@@all << self 
	end

	def self.all
		@@all
	end

	def animals
		Animal.all.select do |animal|
			animal.zoo == self
		end
	end

	def animal_species
		species_array = self.animals.map do |animal|
			animal.species
		end
		species_array.uniq
	end

	def find_by_species(species)
		Animal.all.select do |animal|
			animal.zoo == self
		end
	end

	def animal_nicknames
		nickname_array = self.animals.map do |animal|
			animal.nickname
		end
		nickname_array.uniq
	end

	def self.find_by_location(location)
		self.all.select do |zoo|
			zoo.location == location
		end
	end	

end
