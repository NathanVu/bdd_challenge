# as a programmer I can make a car
require_relative 'vehicle'


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
