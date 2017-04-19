require 'game'

describe Game do

  let(:player){double :player}
  let(:player_class){double :player_class, :new => player}
  let(:game) { Game.new(player_class) }

  it "has two players" do
    expect(game.player1).not_to be nil
  end

end
