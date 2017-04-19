require 'grid'

describe Grid do

  let(:grid) { Grid.new }

  it "has 9 cells" do
    expect(grid.cells.length).to eq 9
  end

  it "has coordinates" do
    expect(grid.cells[:A1].X).to eq "A"
  end


end
