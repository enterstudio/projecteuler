#!/usr/bin/ruby
max = 28123

def dsum(n)
	return 0 if n==1
	s, i = 1, 2
	while i*i < n do
		s += i + n/i if n%i == 0
		i += 1
	end
	s += i if i*i == n
	return s
end

abundants = []
n = []
0.upto(max-1) { |i| n[i] = i+1; abundants << n[i] if dsum(n[i])>n[i] }
l = abundants.length

0.upto(l-1) do |i|
	i.upto(l-1) do |j|
		k = abundants[i] + abundants[j] - 1
		n[k] = 0 if k < max
	end
end

puts n.inject(0){ |s,k| s+k }
