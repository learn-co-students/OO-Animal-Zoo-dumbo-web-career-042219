class Zoo

attr_reader :location, :name

@@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self

  end

  def animals
    animals= self.all
  end

  def animal_species
    # STEP ONE: Find all animals that belong to this zoo
    animals_array = Animal.all.select do |animal|
      animal.zoo == self
    end
    # STEP TWO: Make an array of just the animal species, not the whole instance
    species_array = animals_array.map do |our_zoo_animal|
      our_zoo_animal.species
    end
    # STEP THREE: Make the above array uniq
    species_array.uniq
  end

  def find_by_species(species)
    animals_array = Animal.all.select do |animal|
      animal.species == species
    end
  end

  def animal_nickname(nicknames)
    animals_array = Animal.all.select do |animal|
      animal.nickname == nicknames
    end
  end

  def self.find_by_location(location)
    @@all.select do |zoo|
      zoo.location == location
  end
end


end
