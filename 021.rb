#!/usr/bin/ruby
n = 10**4

def dsum(n)
	c,i = 1,2
	# Nur bis sqrt(n) testen und dafür dann doppelt zählen
	while i*i < n do
		c += i + n/i if n%i == 0
		i += 1
	end
	return c
end

sum = 0

for i in 1..(n-1) do
	j = dsum(i)
	next if i==j
	sum += i if i == dsum(j)
end

puts sum
