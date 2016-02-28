#!/usr/bin/ruby
def H(n) n*(2*n-1) end

def penta?(x)
	k = Math.sqrt(24*x+1).floor
	return ( k**2 == (24*x+1) and (k+1)%6 == 0 )
end

i=143
while true do
	i += 1
	break if penta?(H(i))
end
puts H(i)
