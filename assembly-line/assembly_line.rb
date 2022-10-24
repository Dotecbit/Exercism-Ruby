class AssemblyLine

  @@failure_rate = { 4 => 1.0, 8 => 0.9, 9 => 0.8, 10 => 0.77}

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    failure_rate = 0.0
    @@failure_rate.each_pair { |key, value | if (key >= @speed)
      failure_rate = value 
      break
    end}
    @speed * 221 * failure_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
