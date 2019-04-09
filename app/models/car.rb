class Car
  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []

  # Each car has its own classification, like "antique", "exotic", or "clunker".
  # each mechanic has a specialization (same as car classifications).
  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  # Get a list of all cars
  def self.all
    @@all
  end

  # Get a list of all car classifications.
  def self.classifications
    classes = self.all.map do |car|
      car.classification
    end
    classes.uniq!
  end

  # Get a list of mechanics that have an expertise that matches the car
  # classification.
  def mechanics
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end

end
