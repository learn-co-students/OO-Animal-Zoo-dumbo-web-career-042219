class Animal


  attr_reader :species, :nickname, :zoo
 attr_accessor :weight

  @@all = []


  def initialize(species, weight, nickname, zoo)
   @species = species
   @weight = weight
   @nickname = nickname
   @@all << self
   @zoo = zoo
   # self == instance of Animal
 end

  def self.all
   @@all
   # self == Animal class
 end

  def self.find_by_species(species)
   species_array = @@all.select do |animal|
     animal.species == species
   end
 end

end    end
