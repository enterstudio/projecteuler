#!/usr/bin/ruby
require 'primetool'
limit = 10**7
primes = PrimeTool.new(3*Math.sqrt(limit)).primes.select{ |p| 3*p > Math.sqrt(limit) }

r = []
primes.each do |p|
	primes.select{ |q| q <= p and (p+q-1) % 3 == 0 }.each do |q|
		n, phi = p*q, (p-1)*(q-1)
		next unless n < limit
		if n.to_s.split(//).sort == phi.to_s.split(//).sort then
			r << [ n, n.to_f/phi.to_f ]
		end
	end
end

puts r.min_by{ |a| a[1] }[0]
