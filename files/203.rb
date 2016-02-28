#!/usr/bin/ruby
rows = 51

def squarefree?(n)
	d = 1
	while d += 1 do
		return true if d > n
		if n % d == 0 then
			n /= d
			return false if n%d == 0
		end
	end
end

binomi = [ [1] ]
0.upto(rows-1) do |n|
  binomi[n] = []
  0.upto(n) do |r|
    binomi[n][r] = (n==r || r == 0) ? 1 : ( binomi[n-1][r-1] + binomi[n-1][r] )
  end
end

puts binomi.flatten.uniq.select{ |k| squarefree?(k) }.inject(0){ |s,k| s+k }
