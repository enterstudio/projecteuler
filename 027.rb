#!/usr/bin/ruby
require 'primetool'
maxab = 1000-1
@pt = PrimeTool.new(100*100 + 100*maxab + maxab)

def primes(a,b)
	primes = 0
	1.upto(100){ |n|
		if @pt.is_prime?(n*(n+a)+b) then
			primes += 1
		else
			break
		end
	}
	primes
end

max = [0,0,0]
@pt.primes.select{ |b| b <= maxab }.each do |b|
	@pt.primes.each do |p|	
		a = p-b-1
		next if a < -maxab
		break if a > maxab
		k = primes(a,b)
		max = [k,a,b] if max[0] < k
	end
end
puts max[1]*max[2]
