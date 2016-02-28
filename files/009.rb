#!/usr/bin/ruby
for a in 1..997 do
	for b in a..998 do
		c = 1000 - a - b
		if a*a + b*b == c*c
			puts a*b*c
			exit
		end		
	end
end
