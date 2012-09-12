#!/usr/bin/ruby
max = 10**7
root = Math.sqrt(max).ceil
div = Array.new(max+1, 0)
prime = Array.new(root, true)
prime[0] = prime[1] = false

2.upto(root-1) do |d|
	next unless prime[d]
	n = d*d
	while n<root
		prime[n] = false
		div[n] = d
		n += d
	end
	while n <= max
		div[n] = d
		n += d
	end	
end

div[1] = 1
2.upto(max) do |n|
	if div[n] == 0
		div[n] = 2
	else
		p = div[n]
		k = n/p
		e = 2
		while k % p == 0
			k /= p
			e += 1
		end
		div[n] = div[k] * e
	end
end

s = 0
0.upto(max-1) do |n|
	s += 1 if div[n] == div[n+1]
end
puts s
