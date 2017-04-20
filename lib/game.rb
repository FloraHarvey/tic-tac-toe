require_relative 'player'
require_relative 'grid'
require_relative 'cell'


class Game

  attr_reader :player1, :player2, :current_player, :grid

  def initialize(player1, player2, grid)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @grid = grid
  end

  def place_mark(cell)
    grid.place(current_player.mark, cell)
  end

  def switch_turns
    current_player == player1 ? @current_player = player2 : player1
  end

end
