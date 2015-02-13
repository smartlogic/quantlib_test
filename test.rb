require 'ffi'
require_relative './quantlib'

time = QuantLib.test(1, 1.2)

puts "\n\nTook #{time[:value]} seconds\n\n"
