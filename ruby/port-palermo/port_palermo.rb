module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city.upcase!.slice!(0..3).to_sym
  end

  def self.get_terminal(ship_identifier)
    id = ship_identifier.to_s.slice(0..2)
    if id == "OIL" or id == "GAS" then :A
    else :B
    end
  end
end