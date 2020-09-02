class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def cars 
    Car.all.select {|cars| cars.car_owner == self}
  end

  def mechanics
    self.cars.collect {|mechanics| mechanics.mechanic.name}
  end

  def self.average_number_of_cars
   Car.all.count.to_f / CarOwner.all.count.to_f
  
  end

end
