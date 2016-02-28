#!/usr/bin/ruby
n = 20
table = []

for i in 0..n
	table[i] = []
	table[i][n] = 1
end

for j in 0..n do
	table[n][j] = 1
end

for i in [*0..(n-1)].reverse do
	for j in [*0..(n-1)].reverse do
		table[i][j] = table[i+1][j] + table[i][j+1]
	end
end

puts table[0][0]
