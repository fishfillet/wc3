require_relative 'spec_helper'

describe Unit do
  
  before :each do 
    @unit = Unit.new(0, 12)
  end

  # Units start off alive but they die if their HP hits 0 or lower. 
  # This is usually a result of receiving damage from combat.

  describe "#dead?" do
    it "returns true if unit runs out of HP" do 
      expect(@unit.dead?).to be_truthy
    end
  end




end  