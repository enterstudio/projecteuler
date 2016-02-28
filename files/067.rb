#!/usr/bin/ruby
triangle = []
f = File.open("067_triangle.txt")
while l = f.gets do triangle << l.split(/ /) end
f.close
triangle.each_index{ |i| triangle[i].each_index{ |j| triangle[i][j] = triangle[i][j].to_i }}

(triangle.length-2).downto(0) { |i|
	for j in 0..(triangle[i].length-1) do
		triangle[i][j] += [triangle[i+1][j], triangle[i+1][j+1]].max
	end
}

puts triangle[0][0]
