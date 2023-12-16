module RotationalCipher
  ALPHABET_DOWNCASE = [*'a'..'z']
  ALPHABET_UPCASE = [*'A'..'Z']

  def self.rotate(string, num)
    cipher = ''
    string.split('').each do |element|
      if index = ALPHABET_DOWNCASE.index(element)
        cipher += ALPHABET_DOWNCASE[(index + num) % 26]
      elsif index = ALPHABET_UPCASE.index(element)
        cipher += ALPHABET_UPCASE[(index + num) % 26]
      else
        cipher += element
      end
    end
    cipher
  end
end

p RotationalCipher.rotate('m', 13)