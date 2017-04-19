require 'cell'

describe Cell do

  let(:cell) { Cell.new("A", 1) }

  it "has no content initially" do
    expect(cell.content).to eq nil
  end

  it "has an X coordinate" do
    expect(cell.X).to eq "A"
  end

  it "has a Y coordinate" do
    expect(cell.Y).to eq 1
  end

  it "can be given content of X" do
    cell.place(:X)
    expect(cell.content).to eq :X
  end

  it "can be given content of O" do
    cell.place(:O)
    expect(cell.content).to eq :O
  end

end
