require 'minitest/autorun'
require './main'
class Projecttest< Minitest::Test
  def test_1
  func = ->(x) { Math.exp(x) / (x + 1) }

  assert_equal solve(0.0, 1.0, 1000, nil) { |x| Math.exp(x) / ( x + 1 ) }, solve(0.0, 1.0, 1000, func)
  end
  def test_2
    func = ->(x) { Math.exp(x) / (x + 1) }

    assert_equal solve(0.3, 5.0, 2000, nil) { |x| Math.exp(x) / ( x + 1 ) }, solve(0.3, 5.0, 2000, func)
  end
end