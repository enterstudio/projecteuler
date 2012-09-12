#!/usr/bin/ruby
def dups?(a)
	0.upto(a.length-2) do |i|
		(i+1).upto(a.length-1) do |j|
			return true if a[i] == a[j]
		end
	end
	return false
end

hits = {}

2.upto(98) do |a|
	as = a.to_s
	next if dups?(as)
	next if as.include?("0")
	minb = (4 - as.length == 3) ? 1234 : 123
	maxb = (5 - as.length == 4) ? 9876 : 987
	minb.upto(maxb) do |b|
		bs = b.to_s
		next if bs.include?("0")
		c=a*b
		hits[c] = true if (as + bs + c.to_s).split("").sort.join("") == "123456789"
	end
end

puts hits.map{ |k,v| k }.inject(0){ |s,k| s+k }
