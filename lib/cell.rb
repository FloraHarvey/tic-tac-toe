class Cell

  attr_reader :content, :X, :Y

  def initialize(x, y)
    @X = x
    @Y = y
  end

  def place(mark)
    @content = mark
  end

end
