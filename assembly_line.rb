class AssemblyLine
  UNITS_PER_HOOUR = 221.0

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    total_units_per_hour * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end

  private

  attr_reader :speed

  def total_units_per_hour
    speed * UNITS_PER_HOOUR
  end

  def success_rate
    case speed
    when 0
      0.0
    when 1..4
      1.0
    when 5..8
      0.9
    when 9
      0.8
    when 10
      0.77
    end
  end
end

puts AssemblyLine.new(0).production_rate_per_hour
puts AssemblyLine.new(1).production_rate_per_hour
puts AssemblyLine.new(4).production_rate_per_hour
puts AssemblyLine.new(5).production_rate_per_hour
puts AssemblyLine.new(6).working_items_per_minute