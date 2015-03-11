require_relative 'spec_helper'

# In most strategy games, like Warcraft III, 
# buildings can also be attacked by units. 
# Since a barracks is a building, 
# it has substantial more HP (500) To make matters worse,
# a Footman does only HALF of its AP as damage to a Barracks. 
# This is because they are quite ineffective against buildings.

describe Building do
  before :each do
    @building = Building.new
  end

  it "has and knows it's health points" do
    expect(@building.health_points).to eq(500)
  end

  describe "#damage" do
  it "should only receive 5 (AP) damage from footman" do
    @building.damage(10)
    expect(@building.health_points).to eq(495) # HP started at 500. Receive 10/2.
  end
end

end