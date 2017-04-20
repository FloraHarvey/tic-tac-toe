require 'game'

describe Game do

  let(:player){double :player, :mark => :X}
  let(:player_class){double :player_class, :new => player}
  let(:grid){double :grid, :place => nil}
  let(:game) { Game.new(player_class, grid) }

  it "has two players" do
    expect(game.player1).not_to be nil
  end

  it "has a grid" do
    expect(game.grid).to eq grid
  end

  it "knows that player 1 goes first" do
    expect(game.current_player).to eq(game.player1)
  end

  it "can place a mark on the grid" do
    expect(game.grid).to receive :place
    game.place_mark(:A1)
  end



end
