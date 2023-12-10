module PhoneNumber
  def self.clean(number)
    @number = number.to_s
    return nil if invalid_chars?
    return nil unless valid_number?
    @number
  end

  def self.valid_number?
    remove_international_country_code if @number.length == 11 && @number[0] == "1"
    return false unless valid_length?
    return false unless valid_area_and_exchange_code?
    true
  end

  def self.valid_area_and_exchange_code?
    @number[0].match(/[2-9]/) && @number[3].match(/[2-9]/)
  end

  def self.valid_length?
    @number.length == 10
  end

  def self.remove_international_country_code
    @number = only_digits.slice(1, 10)
  end

  def self.invalid_chars?
    only_digits.match?(/\D/)
  end

  def self.only_digits
    @number = @number.gsub(/[ \(\)\.+-]/,"")
  end
end

p PhoneNumber.clean("12234567890")