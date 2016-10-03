require('minitest/autorun')
require('minitest/rg')
require_relative('../cars')
require_relative('../engine')

class TestCar < MiniTest::Test

  def setup
    
    @turbo_engine = Engine.new(10,25)   #fuel 10 & speed 25
    @na_engine = Engine.new(5,10)       #fuel 5 & speed 10

    @speedy_car = Car.new(100, 0, @turbo_engine)
    @slow_car = Car.new(100, 0, @na_engine)
  end

    # check fuel level
    def test_check_fuel_level
      assert_equal(100, @speedy_car.check_fuel_level)
    end

    # check speed
    def test_check_speed
      assert_equal(0, @speedy_car.check_speed)
    end

# Slow Car -----------------------------------------------------
    # check accelerate Speed > 10 and fuel level < 5
    def test_accelerate
      @slow_car.accelerate
      assert_equal(10,@slow_car.speed)
      assert_equal(95,@slow_car.fuel_level)
    end
    
    # check brake Speed < 10
    def test_brake
      @slow_car.accelerate  # accelerate before brake +10
      @slow_car.accelerate  # accelerate before brake +10
      @slow_car.brake
      assert_equal(10,@slow_car.speed)
    end

    # check brake Speed 0 does not return negative number
    def test_brake_zero
      @slow_car.brake
      assert_equal(0,@slow_car.speed)
    end

# Speedy car ---------------------------------------------------------
    # check accelerate Speed > 10 and fuel level < 5
    def test_accelerate
      @speedy_car.accelerate
      assert_equal(25,@speedy_car.speed)
      assert_equal(90,@speedy_car.fuel_level)
    end
end