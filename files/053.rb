#!/usr/bin/ruby
max = 100
count = 0
binomi = [ [1] ]

0.upto(max-1) do |n|
	binomi[n] = []
	0.upto(n) do |r|
		binomi[n][r] = (n==r) ? 1 : binomi[n][r] = binomi[n-1][r-1] + binomi[n-1][r]
		count += 1 if binomi[n][r] > 1000000
	end
end

puts count
