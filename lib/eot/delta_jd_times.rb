# class Eot file = delta_jd_times.rb
# methods converting delta angles to time

class Eot
  # From delta_times.rb:
  # Uses @ajd attribute
  # Returns Oblique component of EOT in decimal minutes time
  def delta_oblique_jd
    (delta_oblique * R2D) / 360.0 
  end

  # From delta_times.rb:
  # Uses @ajd attribute
  # Returns Orbit component of EOT in decimal minutes time
  def delta_orbit_jd
    (delta_orbit * R2D) / 360.0
  end

  # From delta_times.rb:
  # Uses @ajd attribute
  # Returns EOT as a float for decimal minutes time
  def delta_total_jd
    (delta_total * R2D) / 360.0
  end
end