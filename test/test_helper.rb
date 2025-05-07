# frozen_string_literal: true

require "simplecov"
SimpleCov.start
SimpleCov.at_exit do
  SimpleCov.result.format!
  puts SimpleCov.result.files.map(&:filename)
end
$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "num_inter_demo"

require "minitest/autorun"
