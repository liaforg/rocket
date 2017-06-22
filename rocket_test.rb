require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

def setup
  @rocket = Rocket.new
end

def test_new_name
  @rocket.name = ("John")
  assert @rocket.name = "John"
end

def test_new_name_different
  @rocket.name = ("John")
  refute @rocket.name == "hello"
end

def test_new_colour
  @rocket.colour = ("Red")
  assert @rocket.colour = "Red"
end

def test_new_colour_different
  @rocket.colour = (1)
  refute @rocket.colour == "Red"
end

def test_lift_off_with_rocket_on_ground
  assert @rocket.lift_off == true
  assert @rocket.flying? == true
end

def test_lift_off_with_rocket_in_flight
  @rocket.lift_off
  assert @rocket.lift_off == false
  assert @rocket.flying? == true
end

def test_land_with_rocket_in_flight
  @rocket = Rocket.new(:flying => true)
  assert @rocket.land == true
end

def test_flying_rocket_becomes_not_flying_after_land
  @rocket = Rocket.new(:flying => true)
  @rocket.land
  assert @rocket.flying? == false
end

def test_grounded_rocket_cant_land
  assert @rocket.flying? == false
  assert @rocket.land == false
end

def test_status_of_flying_rocket
  @rocket = Rocket.new(:flying => true)
  assert_equal @rocket.status , "Rocket #{@rocket.name} is flying through the sky!"
end

def test_status_of_rocket_not_flying
  @rocket.flying?
  assert_equal @rocket.status , "Rocket #{@rocket.name} is ready for lift off!"
end

end
