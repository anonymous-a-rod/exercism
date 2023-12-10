module Isogram
  def self.isogram?(input)
    @letters = []
    input.downcase.gsub(/[^a-z]/, '').split('').each do |letter|
      return false if @letters.include?(letter)
      @letters << letter
    end
    true
  end
end

p Isogram.isogram?('racecar')
p Isogram.isogram?('lumberjacks')
p Isogram.isogram?('background')
p Isogram.isogram?('six-year-old')