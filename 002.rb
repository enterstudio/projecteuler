#!/usr/bin/ruby
a,b,sum = 1,1,0

while a < 4*(10**6) do
	sum += a if a%2==0
	a, b = b, a+b
end

puts sum
