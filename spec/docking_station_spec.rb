require 'docking_station'


RSpec.describe DockingStation do
station = DockingStation.new
bike = station.release_bike
a_docked_bike = bike

it {is_expected.to respond_to(:release_bike)}
it {is_expected.to respond_to(:dock_bike)}
it {expect(bike).to be_truthy}
it {expect(a_docked_bike).to eq bike}

end

RSpec.describe DockingStation do
  station = DockingStation.new
  5.times{station.release_bike}
  it {expect {station.release_bike}.to raise_error}
end

RSpec.describe :release_bike do
  it {is_expected.not_to be_nil}
end

RSpec.describe "Does Docking station get a bike and does it work?" do
  station = DockingStation.new
  bike = station.release_bike
  bike_status = bike.working?

it {expect(bike).to be_an_instance_of(Bike)}
it {expect(bike_status).to eq(true)}
end

RSpec.describe Bike do

  it {is_expected.to respond_to(:working?)}

end



#Docking station will create an instance of a bike object
