require_relative 'spec_helper'



#A dead unit cannot attack another unit. Conversely, 
#an alive unit will also not attack another unit that is already dead.

describe Unit do
  before :each do
    @unit = Unit.new(30, 5, true)
  end

  describe "#dead?" do
    it "should not be able to attack if dead" do
    @footman = Footman.new
    @footman.attack!(@unit)
    @footman.attack!(@unit)
    @footman.attack!(@unit)
    @footman.attack!(@unit)
    @unit.attack!(@footman)
    expect(@footman.health_points).to eq(60)
    end
  end

  describe "alive unit won't attack dead unit" do
    it "should not attack dead units" do
      @footman = Footman.new
      @unit2 = Unit.new(0, 0, false)
      # @footman.attack!(@unit2) == nil
      @footman.attack!(@unit2)
      expect(@unit2.health_points).to eq(0)
      
    end
  end
  

end








#   describe "#dead?" do
#     it "should not be able to attack if dead" do
#     @footman = Footman.new
#     @unit.attack!(@footman)
#     expect(@footman.health_points).to eq(60)
#     end
#   end

# end