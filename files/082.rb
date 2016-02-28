#!/usr/bin/ruby
matrix = File.open("082_matrix.txt").readlines.map{ |l| l.chomp.split(",").map{ |n| n.to_i } }
col_last = matrix.map{ |row| row.last }

(matrix.length-2).downto(0) do |col|
	col_cur = []
	0.upto(matrix.length-1) do |row|
		col_cur[row] = matrix[row][col] + col_last[row]
		[ [*0..(row-1)].reverse, [*(row+1)..(matrix.length-1)] ].each do |range|
			path = matrix[row][col]
			range.each do |row2|
				path += matrix[row2][col]
				col_cur[row] = [ col_cur[row], path + col_last[row2] ].min
			end
		end
	end
	col_last = col_cur
end

puts col_last.min
