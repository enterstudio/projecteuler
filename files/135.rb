#!/usr/bin/ruby
limit = 10**6
cnt = Array.new(limit,0)
1.upto(limit-1) do |z|
	((z/3)+1).upto(limit/3) do |a|
		n = (3*a-z)*(a+z)
		break if n >= limit
		cnt[n] += 1
	end
end
puts cnt.grep(10).length
