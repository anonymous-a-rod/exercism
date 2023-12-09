module TwoFer
  def self.two_fer(name = 'you')
    "One for #{name}, one for me."
  end
end

puts TwoFer.two_fer
puts TwoFer.two_fer("Alice")
puts TwoFer.two_fer("Bob")