class Sum
  def self.sum(array)
    array.to_a.reduce(:+)
  end
end

require 'minitest/autorun'
class SumTest < MiniTest::Test
  def test_sum_15
    assert_equal 15, Sum.sum([1, 2, 3, 4, 5])
  end

  def test_sum_1_to_5
    assert_equal 15, Sum.sum(1..5)
  end
end
