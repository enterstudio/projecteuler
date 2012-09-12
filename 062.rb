#!/usr/bin/ruby
perms = 5
res = {}

digits = 1
i = 0
while i += 1 and c = i**3 do

	if c > 10**digits then
		break if ( r = res.values.select{ |v| v.length == perms }.map{ |v| v.min } ) != []
		digits += 1
	end

	nf = c.to_s.split("").sort.to_s
	res[nf] = res[nf].nil? ? [ c ] : (res[nf] << c).sort

end

puts r.min
