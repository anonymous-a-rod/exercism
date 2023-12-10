module Raindrops
  def self.convert(num)
    sound = ''
    sound += 'Pling' if (num % 3).zero?
    sound += 'Plang' if (num % 5).zero?
    sound += 'Plong' if (num % 7).zero?
    sound += num.to_s if sound.empty?
    sound
  end
end

puts Raindrops.convert(123453456789)
puts Raindrops.convert(1)