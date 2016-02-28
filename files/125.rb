#!/usr/bin/ruby
max = 10 ** 8
k = 0
hits = []

while k += 1 and n = k do

	while n += 1 do
		m = ( (n-k+1) * (2 * ( k*k + n*(k+n) ) + n-k) ) / 6
		break if m >= max
		hits << m if m.to_s == m.to_s.reverse
	end

	break if n == k+2

end

puts hits.uniq.inject(0){ |s,x| s+x }
