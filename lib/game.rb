class Game

  attr_reader :player1, :player2

  def initialize(player)
    @player1 = player.new
    @player2 = player.new
  end

end
