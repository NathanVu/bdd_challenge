require 'rspec'
require_relative 'tesla'

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
