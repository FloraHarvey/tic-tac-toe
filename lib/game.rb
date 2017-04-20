require_relative 'player'
require_relative 'grid'
require_relative 'cell'


class Game

  attr_reader :player1, :player2, :current_player, :grid

  def initialize(player, grid)
    @player1 = player.new(:X)
    @player2 = player.new(:O)
    @current_player = player1
    @grid = grid
  end

  def place_mark(cell)
    grid.place(current_player.mark, cell)
  end

end
