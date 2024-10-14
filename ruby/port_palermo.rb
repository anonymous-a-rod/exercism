module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0, 4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    shipment_type = ship_identifier[0, 3]
    return :A if %w[OIL GAS].include? shipment_type
    :B
  end
end
