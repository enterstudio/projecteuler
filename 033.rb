#!/usr/bin/ruby
def gcd(a,b) return (b==0) ? a : gcd(b, a % b) end

prod = [1,1]

for a in 1..9 do
	for b in a..9 do
		for c in (a+1)..9 do
			if (9*a+b)*c == 10*a*b then
				prod[0] *= a
				prod[1] *= c
			end
		end
	end
end

puts prod[1] / gcd(prod[0], prod[1])
