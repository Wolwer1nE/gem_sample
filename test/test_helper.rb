# frozen_string_literal: true

require "simplecov"
require "simplecov_json_formatter"
SimpleCov.start do
  track_files "lib/**/*.rb"
  formatter SimpleCov::Formatter::JSONFormatter
end
SimpleCov.at_exit do
  SimpleCov.result.format!
  puts SimpleCov.result.files.map(&:filename)
end
$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "num_inter_demo"

require "minitest/autorun"
