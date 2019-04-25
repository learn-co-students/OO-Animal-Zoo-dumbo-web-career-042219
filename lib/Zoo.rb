class Zoo
  attr_reader :name, :location

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def animals
    Animal.all.select do |animal|
      animal.zoo == self
    end
  end

  def animal_species
    self.animals.map do |animal|
      animal.species
    end.uniq
  end

  def animal_nicknames
    self.animals.map do |animal|
      animal.nickname
    end.uniq
  end

  def self.all
    @@all
  end

  def self.find_by_location(location)
    self.all.select do |zoo|
      zoo.location.downcase == location.downcase
    end
  end
end
