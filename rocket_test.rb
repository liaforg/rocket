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

def test_lift_off
  @rocket.flying? == false
  assert @rocket.flying? == false
end

def test_lift_off_different
  @rocket.flying?
  refute @rocket.flying?
end


end
