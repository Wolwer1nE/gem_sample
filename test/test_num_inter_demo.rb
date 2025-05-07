# frozen_string_literal: true

require "test_helper"

class TestNumInterDemo < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::NumInterDemo::VERSION
  end

  def test_that_fails_sometimes
    assert  2 > (1 + rand(2.0))
  end

  def test_it_does_something_useful
    assert true
  end
end
