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
