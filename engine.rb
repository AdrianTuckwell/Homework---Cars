class Engine

  attr_accessor :fuel, :speed

  def initialize(fuel, speed)
    @fuel = fuel
    @speed = speed
  end

  def fuel
    return @fuel
  end

  def speed
    return @speed
  end
end