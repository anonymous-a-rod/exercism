class Clock
  attr_accessor :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour = (hour + minute / 60) % 24
    @minute = minute % 60
  end

  def to_s
    "%02d:%02d" % [hour, minute]
  end

  def +(other)
    @hour = (hour + other.hour + ((minute + other.minute) / 60)) % 24
    @minute = (minute + other.minute) % 60
    to_s
  end

  def -(other)
    @hour = (hour - other.hour + ((minute - other.minute).to_f / 60).floor) % 24
    @minute = (minute - other.minute) % 60
    to_s
  end

  def ==(other)
    hour == other.hour && minute == other.minute
  end
end

clock = Clock.new(hour: 10, minute: 0)
p (clock + Clock.new(minute: 3)).to_s