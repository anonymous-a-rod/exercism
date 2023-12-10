module Pangram
  ALPHABET_ARRAY = [*'a'..'z']

  def self.pangram?(sentence)
    sentence.downcase!
    ALPHABET_ARRAY.each { |letter| return false if !sentence.include? letter }
    true
  end
end

sentence = "abcdefghijklmnopqstuvwxyz"
sentence = "\"Five quacking Zephyrs jolt my wax bed.\""

p Pangram.pangram?(sentence)