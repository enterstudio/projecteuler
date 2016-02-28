#!/usr/bin/ruby
n = 1001

diagonals = []
sum, k = 1, 2

while true do
	break if diagonals.length > 2*n-1
	4.times{ |i| diagonals << sum+i*k }
	sum += 4*k
	k += 2
end

puts diagonals[0..2*n-2].inject(0){ |s,x| s+x }
