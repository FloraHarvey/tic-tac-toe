require 'player'

describe Player do

  let(:player) { Player.new(:X) }

  it "is assigned to a mark" do
    expect(player.mark).to eq :X
  end

end
