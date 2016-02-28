#!/usr/bin/ruby
require 'rational'

def fu(s)

	m = [ 0 ]
	d = [ 1 ]
	a = [ Math.sqrt(s).to_i ]

	i = 0
	while i += 1 do

		m[i] = d[i-1] * a[i-1] - m[i-1]
		d[i] = (s - m[i] ** 2) / d[i-1]
		a[i] = (( a[0] + m[i] ) / d[i] ).to_i

		if i == 2 then
			lastlast = Rational(a[0],1)
			last = Rational(a[1] * a[0] + 1, a[1])
		end

		if i >= 2 then
			x = a[i] * last.numerator + lastlast.numerator
			y = a[i] * last.denominator + lastlast.denominator

			if x**2 - s * (y**2) == 1 then
				return Rational(x,y)
				break
			end

			lastlast = last
			last = Rational(x,y)

		end

	end

end

maxval = 0
maxi = 0

1.upto(1000) do |s|

	next if Math.sqrt(s).to_i ** 2 == s
	v = fu(s).denominator

	if v > maxval then
		maxval = v
		maxi = s
	end

end

puts maxi
