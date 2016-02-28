#!/usr/bin/ruby
n = 10**5
rad = [*0..n].map{ |c| [ c ] }

rad.each do |c|
	next unless c[0] >= 2
	c[0].step(n,c[0]) do |m|
		next if m == c[0]
		next unless rad[c[0]].length == 1
		rad[m] << c[0]
	end
end

rad.map!{ |c| c.length == 1 ? [ c[0], c[0] ] : [ c[1..-1].inject(&:*), c[0] ] }
puts rad.sort[10000][1]
