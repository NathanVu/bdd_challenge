require 'rspec'
require_relative 'toyota'

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
