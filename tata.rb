# As a programmer I can make a Tata
require_relative 'car'

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
