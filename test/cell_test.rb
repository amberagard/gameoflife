require 'test_helper'

class CellTest < MiniTest::Unit::TestCase

  # def setup
  #   @cell = Cell.new
  # end

  def test_01_create_cell
    @cell = Cell.new(0, 1)

    assert_equal 0, @cell.x
    assert_equal 1, @cell.y
  end

  def test_02_is_neighbor
    cell_home = Cell.new(2, 2)
    cell_neighbor = Cell.new(2, 3)
    assert cell_home.neighbor?(cell_neighbor)
  end

  def test_03_is_neighbor_fails
    cell_home = Cell.new(2, 2)
    cell_neighbor = Cell.new(2, 4)
    assert_equal false, cell_home.neighbor?(cell_neighbor)
  end

  def test_04_more_neighbors
    cell_home = Cell.new(2, 2)
    cell_fail1 = Cell.new(0, 0)
    cell_fail2 = Cell.new(2, 2)
    cell_pass1 = Cell.new(1, 1)
    cell_pass2 = Cell.new(2, 1)
    cell_pass3 = Cell.new(3, 1)
    cell_pass4 = Cell.new(1, 2)
    cell_pass5 = Cell.new(3, 2)
    cell_pass6 = Cell.new(1, 3)
    cell_pass7 = Cell.new(3, 3)
    assert_equal false, cell_home.neighbor?(cell_fail1)
    assert_equal false, cell_home.neighbor?(cell_fail2)
    assert_equal true, cell_home.neighbor?(cell_pass1)
    assert_equal true, cell_home.neighbor?(cell_pass2)
    assert_equal true, cell_home.neighbor?(cell_pass3)
    assert_equal true, cell_home.neighbor?(cell_pass4)
    assert_equal true, cell_home.neighbor?(cell_pass5)
    assert_equal true, cell_home.neighbor?(cell_pass6)
    assert_equal true, cell_home.neighbor?(cell_pass7)
  end

  def test_05_is_alive_false
    cell = Cell.new(2, 2)
    assert_equal false, cell.alive
  end

  def test_06_is_alive_true
    cell = Cell.new(2, 2)
    cell.alive = true
    assert_equal true, cell.alive
  end

end
