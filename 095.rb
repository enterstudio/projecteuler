#!/usr/bin/ruby
max = 10**6

div = Array.new(max+1, 1)
2.upto(max-1) do |s|
	0.step(max-1, s) do |j|
		div[j] += s
	end
end

longest = 0
min = 0
2.upto(max) do |n|
	chain = []
	m = n
	amic = false
	while !amic and m <= max
		m = div[m] - m
		amic = (m == n)
		break if chain.include?(m)
		chain << m
	end
	if amic and chain.length > longest
		longest, min = chain.length, chain.min
	end
end

puts min
