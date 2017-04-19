class Grid

  attr_reader :cells

  def initialize
    @cells = {}
    generate_grid
  end


  private

  def generate_grid
    [*"A".."C"].each do |l|
      [*1..3].each do |n|
        @cells["#{l}#{n}".to_sym] = Cell.new(l, n)
      end
    end
  end


end
