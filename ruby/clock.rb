class Clock
  MINUTES_PER_HOUR = 60
  MINUTES_PER_DAY = 1440

  def initialize(hour: 0, minute: 0)
    @minute = (minute + hour * MINUTES_PER_HOUR) % MINUTES_PER_DAY     
  end

  def to_s
    '%02d:%02d' % minute.divmod(60)
  end

  def +(other)
    Clock.new minute: minute + other.minute
  end

  def -(other)
    Clock.new minute: minute - other.minute
  end

  def ==(other)
    minute == other.minute
  end

  protected

  attr_reader :minute
end