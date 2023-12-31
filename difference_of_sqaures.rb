class Squares
  def initialize(number)
    @number = number
  end

  def difference
    square_of_sum - sum_of_squares
  end

  def sum_of_squares
    (1..number).sum { |num| num**2 }
  end

  def square_of_sum
    (1..number).sum**2
  end

  private

  attr_reader :number
end

p Squares.new(10).sum_of_squares