require 'grid'

describe Grid do

  let(:cell){double :cell, content: :nil, :place => nil, :X => nil, :Y => nil}
  let(:cell_class){double :cell_class, :new => cell}
  let(:grid) { Grid.new(cell_class) }


  it "has 9 cells" do
    expect(grid.cells.length).to eq 9
  end

  it "can place a mark in a given cell" do
    expect(grid.cells[:A1]).to receive(:place)
    grid.place("X", :A1)
  end


end
