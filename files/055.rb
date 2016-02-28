#!/usr/bin/ruby
def lychrel?(n,i)
	return true if i == 50
	return false if n.to_s == n.to_s.reverse and i>0
	lychrel?(n + n.to_s.reverse.to_i, i+1)
end

puts (0..10**4).select{ |i| lychrel?(i,0) }.length
