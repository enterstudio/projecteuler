#!/usr/bin/ruby
s = 8
m = [ 0 ]
d = [ 1 ]
a = [ Math.sqrt(s).floor ]

i = 0
while i += 1 do
	m << d[-1] * a[-1] - m[-1]
	d << (s - m[-1]**2) / d[-1]
	a << ((a[0] + m[-1]).to_f / d[-1].to_f).floor

	if i == 2 then
		last, lastlast = [ a[1] * a[0] + 1, a[1] ], [ a[0], 1 ]
	end

	if i >= 2 then
		y = a[-1] * last[0] + lastlast[0]
		l = a[-1] * last[1] + lastlast[1]

		if y**2 - s*(l**2) == 1 and (blue = ((1+2*l) + y)/2) + l >= 10**12
			puts blue
			exit
		end

		lastlast, last = last, [y,l]
	end
end
