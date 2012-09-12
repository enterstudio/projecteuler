#!/usr/bin/ruby
def square?(n) (Math.sqrt(n).floor**2 == n) end

ai = 2
while ai += 1
	a = ai**2
	(2+a%2).step(ai-1,2) do |ci|
		c = ci**2
		f = a-c
		next unless square?(f)
		(2+c%2).step(ci-1,2) do |di|
			d = di**2
			e = a-d
			b = c-e
			next unless e>0 and b>0 and square?(e) and square?(b)
			puts (a+b)/2 + (e+f)/2 + (c-d)/2
			exit
		end
	end
end
