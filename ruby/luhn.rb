module Luhn
  def self.valid?(number)
    number.delete!(' ')
    return false if number.length <= 1
    return false if number.scan(/\D/).any?
    number.reverse.split('').each_with_index.inject(0) do |sum, (element, index)|
      if index.even?
        sum + element.to_i
      else
        adjustment = (element.to_i * 2)
        adjustment -= 9 if adjustment > 9
        sum + adjustment
      end
    end % 10 == 0
  end
end

puts Luhn.valid?("05   9")
