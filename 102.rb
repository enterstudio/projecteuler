#!/usr/bin/ruby
def det(v,w) v[0]*w[1] - v[1]*w[0] end

inside = 0
o = [0,0]
File.open("102_triangles.txt").readlines.each do |line|
	x = line.chomp.split(",").map{ |y| y.to_i }
	u = [ x[0], x[1] ]
	v = [ x[2]-x[0], x[3]-x[1] ]
	w = [ x[4]-x[0], x[5]-x[1] ]
	a =  (det(o,w) - det(u,w)).to_f / det(v,w).to_f
	b = -(det(o,v) - det(u,v)).to_f / det(v,w).to_f
	inside += 1 if a > 0 and b > 0 and a+b < 1
end

puts inside
