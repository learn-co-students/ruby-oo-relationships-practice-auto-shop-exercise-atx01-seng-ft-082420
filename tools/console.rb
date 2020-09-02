require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jake = CarOwner.new("Jake")
frank = CarOwner.new("Frank")
sam = CarOwner.new("Sam")

m1 = Mechanic.new("Jeff", "antique")
m2 = Mechanic.new("Joe", "exotic")
m3 = Mechanic.new("Mike", "clunker")

c1 = Car.new("Ford", "Mustang", "antique", jake, m1)
c2 = Car.new("Lambroghini", "Aventador", "exotic", jake, m2)
c3 = Car.new("Chevy", "Tahoe", "clunker", jake, m3)
c8 = Car.new("Chevy", "Tahoe", "clunker", jake, m3)
c9 = Car.new("Chevy", "Tahoe", "clunker", jake, m3)
c4 = Car.new("Ford", "T", "clunker", sam, m3)
c5 = Car.new("Ferrari", "Testarossa", "exotic", sam, m2)
c6 = Car.new("Lambroghini", "Huracan", "exotic", frank, m2)
c7 = Car.new("Lambroghini", "Huracan", "exotic", frank, m2)
c10 = Car.new("Lambroghini", "Huracan", "exotic", frank, m2)
c11 = Car.new("Lambroghini", "Huracan", "exotic", frank, m2)

binding.pry
