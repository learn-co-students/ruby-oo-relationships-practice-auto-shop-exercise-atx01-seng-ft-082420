require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

m1 = Mechanic.new("Russ", "exotic")
m2 = Mechanic.new("Joe", "clunker")
m3 = Mechanic.new("Misty", "antique")

co1 = CarOwner.new("Walid")
co2 = CarOwner.new("Payton")
co3 = CarOwner.new("Alec")
co4 = CarOwner.new("Jake")


c1 = Car.new("Ford", "Fiesta", "clunker", m2,co1)
c2 = Car.new("Porsche", "Taycan", "exotic", m1, co2)
c3 = Car.new("Volkwagen", "Beetle", "antique", m3, co3)
c4 = Car.new("Toyota", "Camry", "clunker", m2, co4)
c5 = Car.new("Buick", "Encore", "clunker", m2, co1)
# c6 = Car.new("Chevy", "Tahoe", "clunker", m2, co3)
# c7 = Car.new("Honda", "Tahoe", "clunker", m2, co2)
# c7 = Car.new("Honda", "Tahoe", "clunker", m2, co4)

binding.pry
0
