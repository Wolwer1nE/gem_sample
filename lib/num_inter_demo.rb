# frozen_string_literal: true

require_relative "num_inter_demo/version"
# This is a demo for numerical integration using the left rectangle method.
module NumInterDemo
  class Error < StandardError; end

  # @param a [Float] lower limit of integration
  # @param b [Float] upper limit of integration
  # @param n [Integer] number of steps
  # @block block [Proc] function to integrate
  def integrate(a, b, n)
    step = (b - a) / n
    x = a
    sum = 0.0
    while x <= b
      sum += yield(x) # Left rectangle
      x += step
    end
    sum * step
  end

  # integrate(a, b, n) do |x|
  #   x**x # for x^2 function
  # end
end
