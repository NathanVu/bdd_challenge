# As a programmer I can make a vehicle
class Vehicle
  def initialize(model_year)
    @model_year = model_year
    @lights = "off"
    @signals = "off"
  end
  def model_year
    @model_year
  end
  def lights?
    @lights
  end
  def switch_lights
    if @lights == "off"
      @lights = "on"
    else
      @lights = "off"
    end
  end
  def signals?
    @signals
  end
  def left_signal
    @signals = "left"
  end
  def right_signal
    @signals = "right"
  end
  def off_signal
    @signals = "off"
  end
end

# this is the garage where cars are stored.
class Garage
  def initialize
    @garage = []
  end
  def garage
    @garage
  end
  def reorder
    @garage.shuffle!
  end
  def store(car)
    @garage << car
  end
  def retrieve(car)
    @garage.delete(car)
  end
  def sort_year
    @garage.sort! { |car1, car2| car1.model_year <=> car2.model_year }
  end
  def sort_model
    @garage.sort! { |car1, car2| car1.class.to_s <=> car2.class.to_s }
  end
  def sort_model_then_year
    @garage.sort! { |car1, car2| [car1.class.to_s, car1.model_year] <=> [car2.class.to_s, car2.model_year] }
  end
end

# as a programmer I can make a car
class Car < Vehicle
  def initialize(model_year)
    super
    @wheels = 4
    @horn = "BEEP!"
    @speed = 0
  end
  # shows how many wheels car has
  def wheels
    @wheels
  end
  # I can honk the cars horn
  def honk_horn
    @horn
  end
  # getter for @speed
  def speed
    "#{@speed} km/h"
  end
  def info
    "This Vehicle is a #{self.model_year.to_s} #{self.class.to_s}. It has #{@wheels} wheels and the current speed of this vehicle is #{@speed} km/h. When it honks, it makes the sound '#{self.honk_horn}'!"
  end
end

# As a programmer I can make a Toyota
class Toyota < Car
  def initialize(model_year)
    super
    @horn = "whoop"
  end
  def accel
    @speed += 7
  end
  def brake
    @speed -= 5
  end
end

# As a programmer I can make a Tata
class Tata < Car
  def initialize(model_year)
    super
    @horn = "beep"
  end
  def accel
    @speed += 2
  end
  def brake
    @speed -= 1.25
  end
end

# As a programmer I can make a Tesla
class Tesla < Car
  def initialize(model_year)
    super
    @horn = "Beep-bee-bee-boop-bee-doo-weep"
  end
  def accel
    @speed += 10
  end
  def brake
    @speed -= 7
  end
end



tata1 = Tata.new(1995)
tata2 = Tata.new(2005)
tesla1 = Tesla.new(2015)
tesla2 = Tesla.new(2017)
toyota1 = Toyota.new(2001)
toyota2 = Toyota.new(2012)
