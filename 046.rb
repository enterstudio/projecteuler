#!/usr/bin/ruby
require 'primetool'
pt = PrimeTool.new(10000)

k=35
while k += 2 do

	hit = false

	pt.primes[1..-1].each do |p|

		break if p > k
		q = ( k - p ) / 2
		
		if Math.sqrt(q).floor ** 2 == q then
			hit = true
			break
		end

	end
	
	unless hit
		puts k
		break
	end

end
