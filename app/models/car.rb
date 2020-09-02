class Car
  attr_accessor :classification, :car_owner, :mechanic
  attr_reader :make, :model

    @@all = []

  def initialize(make, model, classification, mechanic, car_owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @car_owner = car_owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    Car.all.collect {|car| car.classification}
  end

  def find_mechanics(classification)
    Mechanic.all.select {|mechanic| mechanic.specialty == classification}
  end

end
