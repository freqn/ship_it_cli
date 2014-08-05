require 'rspec'
require 'parcel'

describe Parcel do 
  it 'calculates the volume of the package' do
    new_package = Parcel.new(5,5,5,17)
    new_package.volume.should eq(125)
  end

  it 'calculates the shipping cost' do
    new_package = Parcel.new(5,5,5,3)
    new_package.cost_to_ship.should eq(15.33)
  end

end