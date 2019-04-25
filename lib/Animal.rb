class Animal
  attr_accessor :weight
  attr_reader :species, :nickname, :zoo

  @@all = []

  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(species)
    self.all.select do |animal|
      animal.species.downcase === species.downcase
    end
  end
end
