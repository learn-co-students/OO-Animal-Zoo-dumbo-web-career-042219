class Zoo
  attr_reader :name, :location

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
    @animals = []
  end

  def self.all
    @@all
  end

  def add_animal(animal)
   @animals << animal
   animal.location = self
  end

  def animals
    @animals
  end

  def animal_species(species)
    @animals.select {|animal| animal.species == species}
  end

  def animal_nicknames
    @animals.map {|animal| animal.nickname}
  end

  def self.find_by_location(location)
    @@all.select {|zoo| zoo.location == location}
  end
  
  def inspect
    self.name
  end
end
