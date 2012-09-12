#!/usr/bin/ruby
def dow(q,m,y)
	if m<=2 then m+=12; y-=1; end
	j = y / 100
	k = y - 100*j
	return ( q + ((m+1)*26)/10 + k + k/4 + j/4 - 2 * j ) % 7
end

sum = 0
for month in 1..12 do
	for year in 1..100 do
		sum += 1 if dow(1,month,1900+year) == 1
	end
end
puts sum
