#!/usr/bin/ruby
n = 120000
rad = [*0..n].map{ |c| [ c ] }

rad.each do |c|
	next unless c[0] >= 2
	c[0].step(n,c[0]) do |m|
		next if m == c[0]
		next unless rad[c[0]].length == 1
		rad[m] << c[0]
	end
end

rad = rad.map{ |c| c.length == 1 ? [ c[0], c[0], c ] : [ c[0], c[1..-1].inject(&:*), c[1..-1] ] }
sorted = rad.sort_by{ |c| [ c[1], c[0] ] }.select{ |c| 0 < c[0] and c[0] < n/2 }

sum = 0
2.upto(n) do |c|
	next if rad[c][1] == c
	c2 = c/2
	sorted.each do |r|
		a = r[0]
		next if a >= c2
		break if r[1] * rad[c][1] >= c2
		next if r[1] * rad[c-a][1] * rad[c][1] >= c
		next if r[2] & rad[c][2] != []
		sum += c
	end
end

puts sum
