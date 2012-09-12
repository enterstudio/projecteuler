#!/usr/bin/ruby
p, q = 1009, 3643
phi = (p-1)*(q-1)

def gcd(a,b)
	while a != 0 do a, b = b%a, a end
	return b
end

sum = 0
11.step(phi-1, 12) do |e|
	next unless gcd(e-1, p-1) == 2 and gcd(e-1, q-1) == 2 and gcd(e, phi) == 1
	sum += e
end
puts sum
