module Year
  def self.leap?(year)
    year % 4 == 0 && !((year % 100 == 0) && !(year % 400 == 0))
  end
end

puts Year.leap? 1900
puts Year.leap? 2000
puts Year.leap? 2004