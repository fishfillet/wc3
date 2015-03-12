require_relative 'spec_helper'

describe Unit do
  
  before :each do 
    @unit = Unit.new
  end

  # Units start off alive but they die if their HP hits 0 or lower. 
  # This is usually a result of receiving damage from combat.

  describe "#dead?" do
    it "returns alive false if unit runs out of HP" do 
      @footman = Footman.new
      @footman.attack!(@unit)
      @footman.attack!(@unit)
      @footman.attack!(@unit)
      @footman.attack!(@unit)
      expect(@unit.alive).to be_falsey
    end
  end

   describe "#dead?" do
    it "returns alive false if unit does not run out of HP" do 
      @footman = Footman.new
      @footman.attack!(@unit)
      @footman.attack!(@unit)
      expect(@unit.alive).to be_truthy
    end
  end



end  