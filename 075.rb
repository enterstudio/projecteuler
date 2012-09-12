#!/usr/bin/ruby
def gcd(a,b) return (b==0) ? a : gcd(b, a % b) end
limit = 1500000

hits = Array.new(limit+1, 0)
primitives = []

2.upto(Math.sqrt(limit/2)) do |n|
	n2 = n**2
	(1+(n%2)).step(n-1, 2) do |m|
		next if gcd(n,m) != 1
		primitives << 2*(n2 + m*n)
	end
end

primitives.each do |l|
	x = 1
	while (lx = l*x) <= limit and x += 1 do
		hits[lx] += 1
	end
end

puts hits.grep(1).length
