class SpaceAge
  EARTH_YEAR_RATIO =
    {
      mercury: 0.2408467,
      venus: 0.61519726,
      earth: 1.0,
      mars: 1.8808158,
      jupiter: 11.862615,
      saturn: 29.447498,
      uranus: 84.016846,
      neptune: 164.79132
    }.freeze

  def initialize(seconds)
    @seconds = seconds
  end

  def on_mercury
    calc_age(:mercury)
  end

  def on_venus
    calc_age(:venus)
  end

  def on_earth
    calc_age(:earth)
  end

  def on_mars
    calc_age(:mars)
  end

  def on_jupiter
    calc_age(:jupiter)
  end

  def on_saturn
    calc_age(:saturn)
  end

  def on_uranus
    calc_age(:uranus)
  end

  def on_neptune
    calc_age(:neptune)
  end

  private

  attr_accessor :seconds

  def calc_age(planet)
    (earth_years / EARTH_YEAR_RATIO[planet]).round 2
  end

  def earth_years
    minutes = seconds / 60.0
    hours = minutes / 60.0
    days = hours / 24.0
    @years = days / 365.25
  end
end

puts SpaceAge.new(1_000_000_000).on_earth