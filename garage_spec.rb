require 'rspec'
require_relative 'garage'

describe Garage do
  it "has to be made with no errors" do
    expect{Garage.new}.to_not raise_error
  end
  it "has to be able to store a car" do
    garage = Garage.new
    expect(garage.store("car")).to eq(["car"])
    expect(garage.store("bus")).to eq(["car", "bus"])
  end
  it "has to be able to retrieve a car" do
    garage = Garage.new
    expect(garage.store("car")).to eq(["car"])
    expect(garage.store("bus")).to eq(["car", "bus"])
    expect(garage.retrieve("bus")).to eq("bus")
    expect(garage.garage).to eq(["car"])
  end
end
