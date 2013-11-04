module Tictactoe
  class GameBoard
    NUMBER_OF_ROWS = 3
    CELLS_X_ROW = 3
    FREE_POSITION = 0

    attr_reader :cells

    def initialize
      @cells = Array.new(total_positions , 0)
    end

    def total_positions
      NUMBER_OF_ROWS * CELLS_X_ROW
    end

    def position_to_mark(position, mark)
      cells[position.to_i-1] = mark
    end
    
    def full?
      !cells.include?(0)
    end

    def valid_position? position
      in_range?(position) && available_position?(position)
    end

private

    def in_range?(position)
      position.between?(1,9)
    end

    def available_position?(position)
      cells[position-1] == FREE_POSITION
    end

  end
end
