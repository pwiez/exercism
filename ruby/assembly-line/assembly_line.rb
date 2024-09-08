class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    production = @speed * 221
    case @speed
    when 1..4 then production
    when 5..8 then production * 0.9
    when 9 then production * 0.8
    when 10 then production * 0.77
    end
  end

  def working_items_per_minute
    rounded_hourly_production = production_rate_per_hour.floor.to_i
    rounded_hourly_production / 60
  end
end
