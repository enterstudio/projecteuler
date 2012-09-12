#!/usr/bin/ruby
n = 100

def qs(n)
	ret = 0
	while n > 0 do
		ret += n%10
		n/=10
	end
	return ret
end

max=0
(1..(n-1)).each{ |a| (1..(n-1)).each{ |b| max = [max,qs(a**b)].max } }
puts max
