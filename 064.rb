#!/usr/bin/ruby
num = 0

2.step(10000) do |s|
	m = [ 0 ]
	d = [ 1 ]
	a = [ Math.sqrt(s).floor ]
	next if a[0]**2 == s

	i = 0
	repeat = false
	while !repeat and i += 1 do
		m[i] = d[i-1] * a[i-1] - m[i-1]
		d[i] = (s - m[i]**2) / d[i-1]
		a[i] = (a[0] + m[i]) / d[i]
		next unless d[i-1] == 1
		1.upto(i-1) do |j|
			if a[i] == a[j] and m[i] == m[j] and d[i] == d[j] then
				num += 1 if (i-j) % 2 == 1
				repeat = true
				break
			end
		end
	end
end

puts num
