class BirdCount

  @@birds_per_day = []

  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @@birds_per_day = birds_per_day
  end

  def yesterday
    @@birds_per_day[-2]
  end

  def total
    @@birds_per_day.sum
  end

  def busy_days
    busy_days = 0
    @@birds_per_day.each {|birds_day| if birds_day >= 5
      busy_days += 1
    end
    }
    return busy_days
  end

  def day_without_birds?
    @@birds_per_day.any?   { |number| number == 0 }
  end
end
