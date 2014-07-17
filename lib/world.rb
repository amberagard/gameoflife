class World
  attr_accessor :time

  def initialize(width = 1, height = 1)
    @time = 0
    @bound_x = width
    @bound_y = height
    @cells = init_cells
  end

  def time_passes
    @time += 1
  end

  def bounds
    [@bound_x, @bound_y]
  end

  def init_cells
    puts 'hi'
    y = 0
    until y == @bound_y
      x = 0
      until x == @bound_x
        @cells[x][y] = Cell.new(x, y)
        puts "hello"
        x += 1
      end
      y += 1
    end
    @cells
  end

end
