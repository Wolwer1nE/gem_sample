# frozen_string_literal: true

require "test_helper"

class TestNumInterDemo < Minitest::Test
  include NumInterDemo
  def test_that_it_has_a_version_number
    refute_nil ::NumInterDemo::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def test_zero_interval
    assert_equal 0.0, integrate(1.0, 1.0, 100) { |x| x**2 }
  end
end
