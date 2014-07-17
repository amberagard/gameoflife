require 'test_helper'

class WorldTest < MiniTest::Unit::TestCase

  def setup
    @world = World.new
  end

  def test_01_world_start
    assert_equal 0, @world.time
  end

  def test_02_world_time_passes
    assert_equal 0, @world.time
    @world.time_passes
    assert_equal 1, @world.time
  end

  def test_03_create_cells
    world1 = World.new(9, 9)
    assert_equal World, world1.class
    assert_equal [9, 9], world1.bounds
    refute_equal [10, 10], world1.bounds
  end

end
