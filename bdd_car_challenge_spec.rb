require 'rspec'
require_relative 'bdd_car_challenge'

# Testing for Vehicle
describe Vehicle do
  it "has to be able to make a Vehicle" do
    expect{Vehicle.new(2000)}.to_not raise_error
  end
  # testing to see if vehicle has a model_year
  it "has a model year" do
    vehicle = Vehicle.new(2000)
    expect(vehicle.model_year).to eq(2000)
  end
  # Testing to see if vehicle has lights that are off when created
  it "has to have lights that start off" do
    vehicle = Vehicle.new(2000)
    expect(vehicle.lights?).to eq("off")
  end
  # testing the switch lights feature
  it "has to be able to turn lights on and off" do
    vehicle = Vehicle.new(2000)
    expect(vehicle.switch_lights).to eq("on")
    expect(vehicle.switch_lights).to eq("off")
  end
  # testing to see if vehicle has signals that are off
  it "has to have signals off when created" do
    vehicle = Vehicle.new(2000)
    expect(vehicle.signals?).to eq("off")
  end
  # Testing left signal function
  it "has to be able to turn signals left" do
    vehicle = Vehicle.new(2000)
    expect(vehicle.left_signal).to eq("left")
  end
  # Testing right signal function
  it "has to be able to turn signals right" do
    vehicle = Vehicle.new(2000)
    expect(vehicle.right_signal).to eq("right")
  end
  # Testing ability to turn signal off function
  it "has to be able to turn signals off" do
    vehicle = Vehicle.new(2000)
    expect(vehicle.off_signal).to eq("off")
  end
end

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

# Testing for Toyota
describe Toyota do
  it "has to be able to make a Toyota" do
    expect{Toyota.new(2000)}.to_not raise_error
  end

  it "has to make the sound whoop when horn is honked" do
    toyota = Toyota.new(2000)
    expect(toyota.honk_horn).to eq("whoop")
  end

  it "has a model year" do
    toyota = Toyota.new(2000)
    expect(toyota.model_year).to eq(2000)
  end
  # Testing to see if vehicle has lights that are off when created
  it "has to have lights that start off" do
    toyota = Toyota.new(2000)
    expect(toyota.lights?).to eq("off")
  end
  # testing the switch lights feature
  it "has to be able to turn lights on and off" do
    toyota = Toyota.new(2000)
    expect(toyota.switch_lights).to eq("on")
    expect(toyota.switch_lights).to eq("off")
  end
  # Testing the accel of toyota
  it "has to accel by 7 km/h" do
    toyota = Toyota.new(2000)
    expect(toyota.accel).to eq(7)
    expect(toyota.accel).to eq(14)
  end
  # Testing the brake of toyota
  it "has to brake by 7 km/h" do
    toyota = Toyota.new(2000)
    expect(toyota.brake).to eq(-5)
  end
end

# Testing for Tata
describe Tata do
  it "has to be able to make a tata" do
    expect{Tata.new(2000)}.to_not raise_error
  end

  it "has to make the sound beep when horn is honked" do
    tata = Tata.new(2000)
    expect(tata.honk_horn).to eq("beep")
  end

  it "has a model year" do
    tata = Tata.new(2000)
    expect(tata.model_year).to eq(2000)
  end
  # Testing to see if vehicle has lights that are off when created
  it "has to have lights that start off" do
    tata = Tata.new(2000)
    expect(tata.lights?).to eq("off")
  end
  # testing the switch lights feature
  it "has to be able to turn lights on and off" do
    tata = Tata.new(2000)
    expect(tata.switch_lights).to eq("on")
    expect(tata.switch_lights).to eq("off")
  end
  # Testing the accel of tata
  it "has to accel by 2 km/h" do
    tata = Tata.new(2000)
    expect(tata.accel).to eq(2)
    expect(tata.accel).to eq(4)
  end
  # Testing the brake of tesla
  it "has to brake by 7 km/h" do
    tata = Tata.new(2000)
    expect(tata.brake).to eq(-1.25)
  end
end

# Testing for Tesla
describe Tesla do
  it "has to be able to make a tesla" do
    expect{Tesla.new(2000)}.to_not raise_error
  end

  it "has to make the sound Beep-bee-bee-boop-bee-doo-weep when horn is honked" do
    tesla = Tesla.new(2000)
    expect(tesla.honk_horn).to eq("Beep-bee-bee-boop-bee-doo-weep")
  end

  it "has a model year" do
    tesla = Tesla.new(2000)
    expect(tesla.model_year).to eq(2000)
  end
  # Testing to see if vehicle has lights that are off when created
  it "has to have lights that start off" do
    tesla = Tesla.new(2000)
    expect(tesla.lights?).to eq("off")
  end
  # testing the switch lights feature
  it "has to be able to turn lights on and off" do
    tesla = Tesla.new(2000)
    expect(tesla.switch_lights).to eq("on")
    expect(tesla.switch_lights).to eq("off")
  end
  # Testing the accel of testa
  it "has to accel by 10 km/h" do
    tesla = Tesla.new(2000)
    expect(tesla.accel).to eq(10)
    expect(tesla.accel).to eq(20)
  end
  # Testing the brake of tesla
  it "has to brake by 7 km/h" do
    tesla = Tesla.new(2000)
    expect(tesla.brake).to eq(-7)
  end
end

describe Garage do
  it "has to be made with no errors" do
    expect{Garage.new}.to_not raise_error
  end
end
