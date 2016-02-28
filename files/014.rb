#!/usr/bin/ruby
n = 10**6

table = { 1 => 1 }
max = [0,0]

# OBdA nur ungerade Zahlen betrachten; Zu jeder geraden gibt es eine
# ungerade, die eine längere Kette erzeugt
1.step(n,2) do |i|

	c,m = 0,i

	while table[m].nil? do
		c += 1
		m = (m%2==0) ? m/2 : 3*m+1
	end

	table[i] = c + table[m]
	max = [table[i],i] if max[0]<table[i]

end

puts max[1]
