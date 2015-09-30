# class Eot file = int.rb
# attributes, a setter and init method

class Eot
  # From init.rb:
  # address is a String ex: "houston, tx"
  attr_accessor :addr

  # From init.rb:
  # Astronomical Julian Day Number
  # instance of Float class.
  # ajd or jd. Use ajd for time now and jd for noon
  # init sets ajd = DateTime.now.to_time.utc.to_datetime.jd.to_f
  attr_accessor :ajd

  # From init.rb
  # method to reset ma and ta after initialization
  # init sets them using ajd initial Float value
  # see: :ajd attribute
  def set_t_ma
    @jd = (Integer(@ajd - 0.5) + 1).to_f
    @t = ((@ajd - DJ00) / DJC).to_f
    @ma = Helio.mean_anomaly(@t)
  end

  # From init.rb:
  # Date
  # instance of DateTime class
  # initialized to = ajd_to_datetime(@ajd)
  attr_accessor :date

  # From init.rb:
  # Julian Day Number
  # instance of Float class
  attr_accessor :jd

  # From init.rb:
  # Latitude input
  # instance of Float class
  # initialized to = 0.0
  attr_accessor :latitude

  # From init.rb:
  # Longitude input
  # instance of Float class
  # initialized to = 0.0
  attr_accessor :longitude

  # From init.rb:
  # Julian Century gets called often
  # instance of Float class
  # t = (( @ajd - DJ00 ) / DJC).to_f
  attr_accessor :t

  # From init.rb:
  # Mean Anomaly gets called often
  # instance of Float class
  # @ma = Helio.mean_anomaly(@t) see: helio.c
  attr_accessor :ma

  # From init.rb:
  # Initialize to set attributes
  def initialize
    d = DateTime.now.to_time.utc.to_datetime
    @jd = Helio.date2ajd(d.year, d.month, d.day) + 0.5
    @ajd = Helio.date2ajd(d.year, d.month, d.day) + d.day_fraction
    @t = (@jd - 2451545.0)/36525
    @ma = mean_anomaly
    @date = ajd_to_datetime(@jd)    
    @latitude,  @longitude = 0.0,  0.0      
  end
end

# we can run some tests from inside this file.
if __FILE__ == $PROGRAM_NAME
  lib = File.expand_path('../../../lib', __FILE__)
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  require 'eot'
  eot = Eot.new
  p eot.ajd
  p eot.date
  p eot.jd
  p eot.ma
  p eot.ta
  p eot.addr
  p eot.latitude
  p eot.longitude
  list = eot.public_methods(false).sort
  list.each { |i| puts i.to_sym }
  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'init_spec'
  # bundle exec rake
end
