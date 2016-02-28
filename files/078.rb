#!/usr/bin/ruby
p = [ 1 ]
n = 0
while p[n] != 0 and n += 1
	s, k = 0, 1
	while k += 1
		m = k/2
		m *= (-1) if k&1 == 1
		l = m * (3*m - 1) / 2
		break if n-l < 0
		s += ((m&1==0) ? (-1) : 1) * p[n-l]
	end
	p[n] = s % (10**6)
end

puts n
