#!/usr/bin/ruby
n = 12000
a = 1
b = 3
c = 1 + ((n-2)/3)*1
d = 2 + ((n-2)/3)*3

total = 0
while a != 1 or b != 2 do
	x = (n+b)/d
	p = x*c - a
	q = x*d - b
	a, b = c, d
	c, d = p, q
	total += 1
end

puts total-1
