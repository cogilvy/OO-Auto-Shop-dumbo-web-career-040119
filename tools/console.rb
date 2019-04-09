require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# classifications = "antique", "exotic", or "clunker"
# specialties = "antique", "exotic", or "clunker"

# Always make instances of each class first!

# CarOwners
# initialize(name)
chris = CarOwner.new("Chris")
dave = CarOwner.new("Dave")
andrew = CarOwner.new("Andrew")

# Mechanics
# initialize(name, specialty)
luka = Mechanic.new("Luka", "antique")
james = Mechanic.new("James", "exotic")
bob = Mechanic.new("Bob", "clunker")

# Cars
# initialize(make, model, classification, owner, mechanic)
car1 = Car.new("BMW", "M5", "exotic", chris, james)
car2 = Car.new("Buggati", "Veyron", "antique", chris, luka)

car3 = Car.new("Honda", "Accord", "clunker", dave, bob)
car4 = Car.new("Lamborghini", "Gallardo", "exotic", dave, james)

car5 = Car.new("Rolls Royce", "Phantom", "antique", andrew, luka)
car6 = Car.new("Toyota", "Corolla", "clunker", andrew, bob)



# Test our code!

binding.pry

puts "We're done!"
