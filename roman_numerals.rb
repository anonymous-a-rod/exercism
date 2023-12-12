# i = 1
# v = 5
# x = 10
# l = 50
# c = 100
# d = 500
# M = 1000

class Integer
  def to_roman
    num = self
    roman_numeral = ''
    ones_mod, ones_digit = num.divmod(10)
    tens_mod, tens_digit = ones_mod.divmod(10)
    hundreds_mod, hundreds_digit = tens_mod.divmod(10)
    _, thousands_digit = hundreds_mod.divmod(10)

    roman_numeral += 'M' * thousands_digit if (1..4).include? thousands_digit

    roman_numeral += 'C' * hundreds_digit if (1..3).include? hundreds_digit
    roman_numeral += 'CD' if hundreds_digit == 4
    roman_numeral += "D#{'C' * (hundreds_digit - 5)}" if (5..8).include? hundreds_digit
    roman_numeral += 'CM' if hundreds_digit == 9

    roman_numeral += 'X' * tens_digit if (1..3).include? tens_digit
    roman_numeral += 'XL' if tens_digit == 4
    roman_numeral += "L#{'X' * (tens_digit - 5)}" if (5..8).include? tens_digit
    roman_numeral += 'XC' if tens_digit == 9

    roman_numeral += 'I' * ones_digit if (1..3).include? ones_digit
    roman_numeral += 'IV' if ones_digit == 4
    roman_numeral += "V#{'I' * (ones_digit - 5)}" if (5..8).include? ones_digit
    roman_numeral += 'IX' if ones_digit == 9

    roman_numeral
  end
end

p 27.to_roman