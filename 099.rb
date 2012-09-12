#!/usr/bin/ruby
f = File.open("099_base_exp.txt")
d = []
n = 0

while l = f.gets do
	d << [ n += 1, l.split(/,/).map{ |c| c.to_i } ].flatten
end

puts d.sort_by{ |n,a,b| (b * Math.log(a)) }.last[0]
