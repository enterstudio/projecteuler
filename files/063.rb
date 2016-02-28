#!/usr/bin/ruby
i = j = 1
n = 0

while n += 1 and i < 10 do
	l = (i**n).to_s.length
	j += 1 if l == n
	i, n = i+1, 0 if l < n
end

puts j-1
