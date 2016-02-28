#!/usr/bin/ruby
def pandigital?(n)
	return false if n < 10**8
	return n.to_s.split(//).sort.map{ |i| i.to_i } == [*1..9] 
end

i,a,b,x,y = 1,1,1,1,1

while true do

	if pandigital?(a) and pandigital?(x.to_s[0..8].to_i) then
		puts i
		exit
	end

  a, b = b % (10**9), (a+b) % (10**9)
	x, y = y, x+y
	
	if y >= 10**18 then x /= 10; y /= 10 end

	i+=1

end
