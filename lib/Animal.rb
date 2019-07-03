class Animal

  attr_reader :species, :nickname
  attr_accessor :weight, :location

  @@all_animals = []

  def initialize(species, weight, nickname)
    @species = species
    @weight = weight
    @nickname = nickname
    @@all_animals << self
  end

  def self.all
    @@all_animals
  end

  def zoo
    self.location
  end

  def self.find_by_species(species)
    @@all_animals.select {|animal| animal.species == species}
  end

  def inspect
    self.nickname
  end
end
