=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end

class Clock
    attr_reader :time
    
    def initialize(time={hour: 0, minute: 0})
        @time = compute_time(time[:hour],time[:minute])
    end

    def to_s
        if @time[:hour]  < 10
            time_h = "0"+@time[:hour].to_s
        else
            time_h = @time[:hour].to_s
        end
        if @time[:minute] < 10
            time_m = "0"+@time[:minute].to_s
        else
            time_m = @time[:minute].to_s
        end
        return time_h + ":" + time_m
    end

    def +(other)
        m_add = @time[:minute] + other.time[:minute]
        h_add = @time[:hour] + other.time[:hour]
        @time = compute_time(h_add, m_add)
        return self
    end

    def -(other)
        m_rest = @time[:minute] - other.time[:minute]
        h_rest = @time[:hour] - other.time[:hour]
        @time = compute_time(h_rest, m_rest)
        return self
    end
    def ==(other)
        @time[:minute] == other.time[:minute] &&
        @time[:hour] == other.time[:hour]
    end
end

def compute_time(hour, minute)
    if minute == nil
        minute = 0
    end
    if hour == nil
        hour = 0
    end
    minute_r = (minute % 60)
    if minute < 0
        hour_r = ((hour + (minute  / 60).round) % 24)
    elsif minute  >= 60 
        hour_r = ((hour + (minute  / 60).to_i) % 24)
    else
        hour_r = (hour  % 24)
    end
    return {hour: hour_r,minute: minute_r}
end