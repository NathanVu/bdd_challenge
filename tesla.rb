# As a programmer I can make a Tesla
require_relative 'car'

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
