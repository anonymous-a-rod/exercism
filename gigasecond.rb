module Gigasecond
  GIGASECOND = 10**9

  def self.from(time)
    time + GIGASECOND
  end
end

p Gigasecond.from(Time.utc(2015, 1, 24, 23, 59, 59))