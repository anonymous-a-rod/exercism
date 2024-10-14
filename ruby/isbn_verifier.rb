module IsbnVerifier
  def self.valid?(string)
    arr = string.gsub('-', '').split('')
    return false if arr.length != 10

    arr[9] = '10' if arr[9].downcase == 'x'

    total = 0
    arr.each_with_index do |number, index|
      return false unless number.match(/[0-9]/) || number == '10'
      total += number.to_i * (10 - index.to_i)
    end
    (total % 11).zero?
  end
end

p IsbnVerifier.valid?('3-598-21507-X')
p IsbnVerifier.valid?('3-598-21517-X')
