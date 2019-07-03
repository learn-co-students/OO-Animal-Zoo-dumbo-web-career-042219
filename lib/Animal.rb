class Animal

attr_reader :species, :nickname, :zoo
attr_accessor :weight 

@@all = []

	def initialize(species, weight, nickname, zoo)
	@species = species
	@nickname = nickname
	@weight = weight
	@zoo = zoo
	@@all << self
	end


	def self.all
	@@all
	end

	def zoo
	@zoo
	end

	# def species
	# @species
	# end

	def self.find_by_species(argument)
		Animal.all.select do |animal|
		animal.species == argument
	end
end
end
