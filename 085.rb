#!/usr/bin/ruby
target = 2 * 10**6
best = [ nil, nil, target ]

1.upto(2000) do |w|
	wn = w*(w+1)/2
	1.upto(w) do |h|
		total = h*(h+1)/2 * wn
		best = [ h, w, (target - total).abs ] if (target - total).abs < best[2]
	end
end

puts best[0] * best[1]
