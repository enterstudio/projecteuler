#!/usr/bin/ruby
max = 10**6
a = nil

def ggT(a,b) (b == 0) ? a : ggT(b, a % b) end

max.downto(1) do |n|
	if (a = 3*n-1) % 7 == 0 then
		a /= 7
		break if ggT(a,n) == 1
	end
end

puts a
