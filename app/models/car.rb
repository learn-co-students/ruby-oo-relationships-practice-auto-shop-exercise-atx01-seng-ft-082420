class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic
  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic

    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.classifications
     Car.all.collect {|car_class| car_class.classification }
    
  end

  def self.find_mechanics(classification)
    find_m = Car.all.select {|mechanics| mechanics.mechanic.specialty == classification}
    find_m.collect {|mech| mech.mechanic.name}.uniq
  end

end
