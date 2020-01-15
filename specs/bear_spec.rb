require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < Minitest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizz")
    @fish = Fish.new("Jelly")
    @river = River.new("Raavi")
  end

  def test_can_create_bear()
    assert_equal(Bear, @bear.class())
  end

  def test_bear_name()
    assert_equal("Yogi", @bear.name())
  end

  def test_bear_type()
    assert_equal("Grizz", @bear.type())
  end

  def test_bear_with_empty_stomach()
    assert_equal(0,@bear.empty_stomach_check())
  end

  # def test_bear_get_fish_from_river()
  #   @bear.get_fish_from_river(@fish)
  #   @river.loose_fish_in_river(@fish)
  #   assert_equal(1, @bear.empty_stomach.length())
  #   assert_equal(4,@river.fish_count())
  # end
  def test_bear_roar()
    assert_equal("Roar", @bear.bear_roar())
  end



end
