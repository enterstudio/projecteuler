#!/usr/bin/ruby
require 'primetool'
limit = 50 * 10**6
pt = PrimeTool.new(Math.sqrt(limit - 2**3 - 2**4))

hits = {}
pt.primes.each do |p1|
	p12 = p1**2
	pt.primes.each do |p2|
		p23 = p2**3
		break if p23 > limit or p12+p23 > limit
		pt.primes.each do |p3|
			p34 = p3**4
			break if p34 > limit or p12+p23+p34 > limit
			hits[p12+p23+p34] = true
		end
	end
end
puts hits.keys.length
