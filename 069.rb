#!/usr/bin/ruby
require 'primetool'
max = 10**6
n = 1
1.upto(max) do |p|
	next unless PrimeTool.is_prime_trial?(p)
	break if (n*p) >= max
	n *= p
end
puts n
