class Unit
  attr_accessor :health_points, :attack_power, :alive
  def initialize(hp = 30, ap = 5, alive = true)
    @health_points = hp
    @attack_power = ap
    @alive = alive
  end

  def damage(ap)
    @health_points = @health_points - ap
    dead?
  end

  def attack!(enemy_unit)
    if enemy_unit.dead?
      enemy_unit.damage(0)
    else
    enemy_unit.damage(@attack_power)
    end
  end

  def dead?
    if @health_points <= 0
      @attack_power = 0
      @alive = false
      true
    end
  end


end