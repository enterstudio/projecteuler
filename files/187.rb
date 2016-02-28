#!/usr/bin/ruby
require 'primetool'
limit = 10**8
primes = PrimeTool.new(limit/2).primes
limit2 = Math.sqrt(limit).to_i

c = i = 0
while primes[i] < limit2 do
	limit3 = limit / primes[i]
	j = i
	while primes[j] and primes[j] <= limit3
		c += 1
		j += 1
	end
	i += 1
end
puts c
