require 'game'

describe Game do

  let(:player1){double :player, :mark => :X}
  let(:player2){double :player, :mark => :O}
  let(:grid){double :grid, :place => nil}
  let(:game) { Game.new(player1, player2, grid) }

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

  it "can switch turns" do
    expect{ game.switch_turns }.to change{ game.current_player }.from(game.player1).to(game.player2)
  end


end
