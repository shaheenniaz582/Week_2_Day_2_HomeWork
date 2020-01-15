require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')

class RiverTest < Minitest::Test

  def setup()
  @river = River.new("Amazon")
  @fish1 = Fish.new("Whale")
  @fish2 = Fish.new("Dolphin")
  @fish3 = Fish.new("Shark")
  @fish4 = Fish.new("Star")
  end

  def test_can_create_river()
    assert_equal(River, @river.class())
  end

  def test_river_name()
    assert_equal("Amazon", @river.name())
  end

end
