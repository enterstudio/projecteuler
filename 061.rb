#!/usr/bin/ruby
t = [*1..200].map{ |n|
	[ [ 0, n*(n+1)/2 ], [ 1, n*n ], [ 2, n*(3*n-1)/2 ],
		[ 3, n*(2*n-1) ], [ 4, n*(5*n-3)/2 ], [ 5, n*(3*n-2) ] ]
}.flatten(1).select{ |a| 1000 <= a[1] and a[1] <= 10000 }

t.select{ |a| a[0] == 0 }.each do |a|
	t.select{ |b| b[0] != a[0] and a[1] % 100 == b[1] / 100 }.each do |b|
		t.select{ |c| b[1] % 100 == c[1] / 100 }.each do |c|
			next if [a[0],b[0]].include?(c[0])
			t.select{ |d| c[1] % 100 == d[1] / 100 }.each do |d|
				next if [a[0],b[0],c[0]].include?(d[0])
				t.select{ |e| d[1] % 100 == e[1] / 100 }.each do |e|
					next if [a[0],b[0],c[0],d[0]].include?(e[0])
					t.select{ |f| e[1] % 100 == f[1] / 100 and f[1] % 100 == a[1] / 100 }.each do |f|
						next if [a[0],b[0],c[0],d[0],e[0]].include?(f[0])
						puts a[1]+b[1]+c[1]+d[1]+e[1]+f[1]
						exit
					end
				end
			end
		end
	end
end
