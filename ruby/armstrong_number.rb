module ArmstrongNumbers
  def self.include?(number)
    digits ||= number.digits
    exp ||= digits.length
    number == digits.sum { |digit| digit**exp }
  end
end

puts ArmstrongNumbers.include?(9474)
puts ArmstrongNumbers.include?(10)