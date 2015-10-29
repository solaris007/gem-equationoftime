# class Eot file = jd_times.rb
# methods returning JD numbers
class Eot
  # From jd_times.rb:
  # Uses @jd attribute
  # Returns astronomical twilight end as a Julian Day Number
  def astronomical_twilight_end_jd
    solar_noon_jd + ha_sun(4) / P2
  end

  # From jd_times.rb:
  # Uses @jd attribute
  # Returns nautical twilight start as a Julian Day Number
  def nautical_twilight_start_jd
    solar_noon_jd - ha_sun(3) / P2
  end

  # From jd_times.rb:
  # Uses @jd attribute
  # Returns civil twilight start as a Julian Day Number
  def civil_twilight_start_jd
    solar_noon_jd - ha_sun(2) / P2
  end

  # From jd_times.rb:
  # Uses @jd attribute
  # Returns Sunrise as a Julian Day Number
  def sunrise_jd
    solar_noon_jd - ha_sun(1) / P2
  end

  # From jd_times.rb:
  # Uses @jd and @longitude attributes
  # Returns local mean noon as a JD
  def mean_local_noon_jd
    @jd - @longitude / 360.0
  end

  # From jd_times.rb:
  # Uses @jd attribute
  # Returns EOT as an AJD Julian number
  def eot_jd
    time_eot / DAY_MINUTES
  end

  # From jd_times.rb:
  # Uses @jd and @longitude attributes
  # Returns local mean noon as a JD
  def solar_noon_jd
    @jd - @longitude / 360.0 - eot_jd
  end

  # From jd_times.rb:
  # Uses @jd attribute
  # Returns Sunset as a Julian Day Number
  def sunset_jd
    solar_noon_jd + ha_sun(1) / P2
  end

  # From jd_times.rb:
  # Uses @jd attribute
  # Returns civil twilight end as a Julian Day Number
  def civil_twilight_end_jd
    solar_noon_jd + ha_sun(2) / P2
  end

  # From jd_times.rb:
  # Uses @jd attribute
  # Returns nautical twilight end as a Julian Day Number
  def nautical_twilight_end_jd
    solar_noon_jd + ha_sun(3) / P2
  end

  # From jd_times.rb:
  # Uses @jd attribute
  # Returns astronomical twilight start as a Julian Day Number
  def astronomical_twilight_start_jd
    solar_noon_jd - ha_sun(4) / P2
  end

end