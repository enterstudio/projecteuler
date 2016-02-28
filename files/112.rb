#!/usr/bin/ruby
b = 0
n = 100
while 100*b != 99*n and n += 1
	d, l = n/10, n%10
	inc = dec = false
	while d > 0 and (not inc or not dec)
		dec = true if d % 10 < l
		inc = true if d % 10 > l
		l, d = d%10, d/10
	end
	b += 1 if inc and dec
end
puts n
