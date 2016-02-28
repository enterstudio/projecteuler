#!/usr/bin/ruby
require 'primetool'
pt = PrimeTool.new(700)

factors = {}
k = 2*3*5*7
factors[k-1] = factors[k-2] = factors[k-3] = []

while true do

	factors[k] = []
	m = k

	pt.primes.each do |p|
		break if p > m

		if m % p == 0 then
			factors[k] << p
			m /= p while m%p == 0
			if factors[m]
				factors[k].concat factors[m]
				break
			end
			break if factors[k].length > 4
		end
	end

	if factors[k].length == 4 and factors[k-1].length == 4 and
			factors[k-2].length == 4 and factors[k-3].length == 4 then
		puts k-3
		break
	end

	k += 1

end
