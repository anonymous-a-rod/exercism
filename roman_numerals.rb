class Integer
  ROMAN_NUMERALS =
    {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }

  def to_roman
    num = self
    roman_numeral = ''
    ROMAN_NUMERALS.each do |key, value|
      while num >= key
        num -= key
        roman_numeral += value
      end
    end
    roman_numeral
  end
end

print 2715.to_roman