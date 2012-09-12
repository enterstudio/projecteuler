#!/usr/bin/ruby
n = 1000

def divrest(a,b)

	rems = []
	r = 1

	while r != 0 do
		k = a/b
		
		if k==0 then
			a *= 10
			k = a/b
		end

		r = a%b

		if not rems.include?(r) then
			rems << r
		else
			break
		end

		a = r
	end

	return rems.length
end

max = [0,0]
1.upto(n-1){ |i|
	k = divrest(1,i)
	max = [k,i] if k>max[0]
}

puts max[1]
