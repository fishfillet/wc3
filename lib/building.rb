class Building

  attr_reader :health_points

  def initialize(hp=500)
    @health_points = hp
  end

  def damage(enemydamage)
    @health_points = @health_points - (enemydamage/2)
  end


end
