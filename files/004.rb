#!/usr/bin/ruby
max = 0

for i in [*100..999].reverse do
	for j in [*i..999].reverse do
		next if ( i%11 != 0 ) and ( j%11 != 0 )
		x = i*j
		max = [max,x].max if x.to_s == x.to_s.reverse
	end
end

puts max
