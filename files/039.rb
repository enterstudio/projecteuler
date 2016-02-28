#!/usr/bin/ruby
n = 1000
sols = []

1.upto(n) do |a|
	a.upto(n) do |b|
		c = Math.sqrt(a*a + b*b)
		next unless c == c.floor
		sols << [a,b,c.floor] if a+b+c <= n
	end
end

sols = sols.map{ |p| p[0]+p[1]+p[2] }
count = sols.inject(Hash.new(0)){ |h,v| h[v] += 1; h }
puts sols.sort_by{ |v| count[v] }.last
