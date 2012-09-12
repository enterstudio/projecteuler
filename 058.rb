#!/usr/bin/ruby
require 'primetool'
pt = PrimeTool.new(50000)

d = l = last = 1
primes = 0

while l += 2 do

	[ last + (l-1), last + 2*(l-1), last + 3*(l-1) ].each{ |n|
		primes += 1 if pt.is_prime_trial_with_sieve?(n)
	}

	last += 4*(l-1)
	d += 4
	break if 10*primes < d

end
puts l
