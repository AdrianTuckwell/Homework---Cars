class Car 

  attr_accessor :fuel_level, :speed, :engine

  def initialize(fuel_level, speed, engine)
    # Instance variables
    @fuel_level = fuel_level
    @speed = speed
    @engine = engine
  end

  def check_fuel_level
    return @fuel_level
  end

  def check_speed
    return @speed
  end

  def accelerate
      @speed += @engine.speed         # up speed by 10
      @fuel_level -= @engine.fuel     # lower fuel level by 5
  end

  def brake
      if @speed > @engine.speed
        return @speed -= @engine.speed  # lower speed by 10
      else
        return @speed = 0
      end
  end

end