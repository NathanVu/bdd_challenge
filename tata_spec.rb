require 'rspec'
require_relative 'tata'

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
