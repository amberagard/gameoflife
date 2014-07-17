class Cell
  attr_accessor :x, :y, :alive

  def initialize(x, y)
    @x = x
    @y = y
    @alive = false
  end

  def neighbor?(other_cell)
    x_distance = (@x - other_cell.x).abs
    y_distance = (@y - other_cell.y).abs
    x_distance == 1 || y_distance == 1
  end

  def alive?
    @alive
  end

end
