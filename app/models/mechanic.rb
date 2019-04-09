class Mechanic
  attr_reader :name, :specialty

  @@all = []

  # Each car has its own classification, like "antique", "exotic", or "clunker".
  # each mechanic has a specialization (same as car classifications).
  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  # Get a list of all mechanics.
  def self.all
    @@all
  end

  # Get a list of all cars that a mechanic services
  def cars_serviced
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  # Get a list of all the car owners that go to a specific mechanic
  # Use the list of cars that a mechanic works on (cars_serviced) then find the
  # .owner value for those cars!
  def owners
    cars_serviced.map do |car|
      car.owner
    end
  end

  # Get a list of the names of all car owners who go to a specific mechanic
  # Use the owners list to find the list of all the car owners that go to a
  # specific mechanic, then iterate through each owner (CarOwner) to find their
  # .name value.
  def owner_names
    owners.map do |owner|
      owner.name
    end
  end

end
