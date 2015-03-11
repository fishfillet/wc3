class Unit
  attr_reader :health_points, :attack_power
  def initialize(hp, ap)
    @health_points = hp
    @attack_power = ap
  end

  def damage(ap)
    @health_points = @health_points - ap
  end

  def attack!(enemy_unit)
    enemy_unit.damage(@attack_power)
  end

  def dead?
    @health_points <= 0
  end


end