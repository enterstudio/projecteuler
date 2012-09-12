#!/usr/bin/ruby
n = 1000
c,a,b = 0,1,1
1.upto(n) do
	b, a = a+b, 2*b+a
	c+=1 if a.to_s.length > b.to_s.length
end
puts c
