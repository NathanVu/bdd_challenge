# As a programmer I can make a Toyota
require_relative 'car'

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
