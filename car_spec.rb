require 'rspec'
require_relative 'car'

# Testing for Car
describe Car do
  it "has to be able to make a Car" do
    expect{Car.new(2000)}.to_not raise_error
  end

  it "has to have four wheels" do
    car = Car.new(2000)
    expect(car.wheels).to eq(4)
  end

  it "has to be able to honk horn and say BEEP!" do
    car = Car.new(2000)
    expect(car.honk_horn).to eq("BEEP!")
  end

  it "has a model year" do
    car = Car.new(2000)
    expect(car.model_year).to eq(2000)
  end
  # Testing to see if vehicle has lights that are off when created
  it "has to have lights that start off" do
    car = Car.new(2000)
    expect(car.lights?).to eq("off")
  end
  # testing the switch lights feature
  it "has to be able to turn lights on and off" do
    car = Car.new(2000)
    expect(car.switch_lights).to eq("on")
    expect(car.switch_lights).to eq("off")
  end
  it "has to have a speed of 0 km/h when car is made" do
    car = Car.new(2000)
    expect(car.speed).to eq("0 km/h")
  end
  # Testing info method
  it "has to give the vehicles info" do
    car = Car.new(2000)
    expect(car.info).to eq("This Vehicle is a 2000 Car. It has 4 wheels and the current speed of this vehicle is 0 km/h. When it honks, it makes the sound 'BEEP!'!")
  end
end
