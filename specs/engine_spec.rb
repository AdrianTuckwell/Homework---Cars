require('minitest/autorun')
require('minitest/rg')
require_relative('../engine')

class TestEngine < MiniTest::Test

  def setup
    @turbo_engine = Engine.new(10,25)   #fuel 10 & speed 25
    @na_engine = Engine.new(5,10)       #fuel 5 & speed 10
  end

  def test_turbo_engine_fuel
    assert_equal(10, @turbo_engine.fuel)
  end

  def test_turbo_engine_speed
    assert_equal(25, @turbo_engine.speed)
  end

  def test_na_engine_fuel
    assert_equal(5, @na_engine.fuel)
  end

  def test_na_engine_speed
    assert_equal(10, @na_engine.speed)
  end
end