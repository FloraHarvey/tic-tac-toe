class Grid

  attr_reader :cells

  def initialize(cell)
    @cells = {}
    generate_grid(cell)
  end

  def place(mark, cell)
    @cells[cell].place(mark)
  end


  private

  def generate_grid(cell)
    [*"A".."C"].each do |l|
      [*1..3].each do |n|
        @cells["#{l}#{n}".to_sym] = cell.new(l, n)
      end
    end
  end


end
