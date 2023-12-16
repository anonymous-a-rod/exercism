class SimpleCalculator
  def self.calculate(first_operand, second_operand, operation)
    validate_operands(first_operand, second_operand)
    case operation
    when "+"
      add(first_operand, second_operand)
    when "/"
      divide(first_operand, second_operand)
    when "*"
      multiply(first_operand, second_operand)
    else
      raise UnsupportedOperation
    end
  end

  private

  def self.add(first_operand, second_operand)
    "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
  end

  def self.divide(first_operand, second_operand)
    begin
      raise ZeroDivisionError if second_operand == 0
    rescue => e
      e.message
    end

    "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
  end

  def self.multiply(first_operand, second_operand)
    "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
  end

  def self.validate_operands(first_operand, second_operand)
    raise ArgumentError unless first_operand.is_a?(Integer) && second_operand.is_a?(Integer)
  end

end

p SimpleCalculator.calculate(1, 0, "/")