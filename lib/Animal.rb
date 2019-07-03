class Animal


	attr_accessor :weight, :zoo
	attr_reader :species, :nickname

	@@all = []

	def initialize(nickname, species, weight)
		@nickname = nickname
		@species = species
		@weight = weight
		@@all << self
	end

	def self.all
		@@all
	end

	def self.find_by_species(species)
		self.all.select do |animal|
			animal.species == species
		end
	end

end
