class Triangle
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    num_of_uniq_sides == 1 && valid_triangle?
  end

  def isosceles?
    num_of_uniq_sides <= 2 && valid_triangle?
  end

  def scalene?
    num_of_uniq_sides == 3 && valid_triangle?
  end

  private

  attr_reader :sides

  def num_of_uniq_sides
    sides.uniq.size
  end

  def valid_triangle?
      sides.size == 3 && sides.min.positive? && sides.permutation.all? { |a, b, c| a < b + c }
  end
end

puts Triangle.new([0, 0, 0]).equilateral?
puts Triangle.new([4, 4, 4]).equilateral?