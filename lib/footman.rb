# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit

  attr_reader #:health_points :attack_points

  def initialize (hp=60, ap=10)
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    # @health_points = 60
    # @attack_power= 10
    super(hp, ap)
    @super_power = 50
  end


  def attack!(enemy)
    enemy.damage(@attack_power)
  end

  def damage(hp)
    @health_points -= hp
  end

end

