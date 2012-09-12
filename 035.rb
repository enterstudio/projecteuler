#!/usr/bin/ruby
require 'primetool'
n = 1000000
pt = PrimeTool.new(n)
primes = pt.primes

def rotate(s)
	s = "#{s[-1,1]}#{s.chop}"
end

count = 0

for p in primes do

	s = p.to_s
	count += 1

	for i in 1..s.length-1 do	
		s = rotate(s)
		if not pt.is_prime?(s.to_i) then
			count -= 1
			break
		end	
	end

end

puts count
