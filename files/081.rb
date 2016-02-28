#!/usr/bin/ruby
m = File.open("081_matrix.txt").readlines.map{ |l| l.chomp.split(",").map{ |n| n.to_i } }
cost = { [0,0] => m[0][0] }
for i in 0..(m.length-1) do
	for j in 0..(m.length-1) do
		next if i == 0 and j == 0
		cost[[i,j]] = [ cost[[i-1,j]], cost[[i,j-1]] ].compact.min + m[i][j]
	end
end
puts cost[[m.length-1, m.length-1]]
