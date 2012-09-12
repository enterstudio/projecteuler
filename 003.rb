#!/usr/bin/ruby
n = 600851475143
i = 2

while n>1 do
	n, i = n/i, i-1 if n%i == 0
	i += 1
end

puts i
