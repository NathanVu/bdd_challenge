require 'rspec'
require_relative 'vehicle'

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
