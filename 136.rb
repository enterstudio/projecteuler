#!/usr/bin/ruby
require 'primetool'
limit = 50 * (10**6)
primes = PrimeTool.new(limit).primes - [2]
c = 2
primes.each do |p|
	c += 1 if (p+1) % 4 == 0
	next if 4*p >= limit
	c += 1
	next if 16*p >= limit
	c += 1
end
puts c
