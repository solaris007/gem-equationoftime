# aliased_trig_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

angles = Eot.new

describe 'Tests ajd of 2456885.0 ' do
  before(:each) do
    angles.ajd = 2_456_885.0
    ajd = angles.ajd
    angles.ma_ta_set
    # check date for this ajd when needed.
    angles.date = angles.ajd_to_datetime(ajd)
  end

  it 'expected from angles.cosine_apparent_longitude.round(10) \
                 -0.794336157 ' do
    assert_equal(-0.794336157,
                 angles.cosine_apparent_longitude.round(10))
  end

  it 'expected from angles.cosalsun.round(10) \
                 -0.794336157 ' do
    assert_equal(-0.794336157,
                 angles.cosalsun.round(10))
  end

  it 'expected from \ angles.cosine_true_longitude.round(10) \
                 -0.794377276 ' do
    assert_equal(-0.794377276,
                 angles.cosine_true_longitude.round(10))
  end

  it 'expected from angles.cosine_true_obliquity.round(10) \
                 0.9175115347 ' do
    assert_equal(0.9175115347,
                 angles.cosine_true_obliquity.round(10))
  end

  it 'expected from angles.sine_apparent_longitude.round(10) \
                 0.607478452 ' do
    assert_equal(0.607478452,
                 angles.sine_apparent_longitude.round(10))
  end

  it 'expected from angles.sine_true_longitude.round(10) \
                 0.6074246813 ' do
    assert_equal(0.6074246813,
                 angles.sine_true_longitude.round(10))
  end

  it 'expected from angles.sine_true_obliquity.round(10) \
                 0.3977091698 ' do
    assert_equal(0.3977091698,
                 angles.sine_true_obliquity.round(10))
  end
end

describe 'Tests ajd of 2455055.5 ' do
  before(:each) do
    angles.ajd = 2_455_055.0
    ajd = angles.ajd
    angles.ma_ta_set
    # check date for this ajd when needed.
    angles.date = angles.ajd_to_datetime(ajd)
  end

  it 'expected from angles.cosine_apparent_longitude.round(10) \
                 -0.754188697 ' do
    assert_equal(-0.754188697,
                 angles.cosine_apparent_longitude.round(10))
  end

  it 'expected from angles.cosalsun.round(10) \
                 -0.754188697 ' do
    assert_equal(-0.754188697,
                 angles.cosalsun.round(10))
  end

  it 'expected from \ angles.cosine_true_longitude.round(10) \
                 -0.754206077 ' do
    assert_equal(-0.754206077,
                 angles.cosine_true_longitude.round(10))
  end

  it 'expected from angles.cosine_true_obliquity.round(10) \
                 0.9174818088 ' do
    assert_equal(0.9174818088,
                 angles.cosine_true_obliquity.round(10))
  end

  it 'expected from angles.sine_apparent_longitude.round(10) \
                 0.6566577566 ' do
    assert_equal(0.6566577566,
                 angles.sine_apparent_longitude.round(10))
  end

  it 'expected from angles.sine_true_longitude.round(10) \
                 0.6566377947 ' do
    assert_equal(0.6566377947,
                 angles.sine_true_longitude.round(10))
  end

  it 'expected from angles.sine_true_obliquity.round(10) \
                 0.3977777401 ' do
    assert_equal(0.3977777401,
                 angles.sine_true_obliquity.round(10))
  end
end
