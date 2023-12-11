module ArmstrongNumbers
  def self.include?(number)
    numbers = number.to_s.split('')
    total = 0
    numbers.each { |num| total += (num.to_i**numbers.length) }
    number == total
  end
end

puts ArmstrongNumbers.include?(9474)