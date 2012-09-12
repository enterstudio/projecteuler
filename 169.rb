#!/usr/bin/ruby
@mem = { 0 => 0, 1 => 1 }
def a(n)
	return @mem[n] if @mem[n]
	return @mem[n] = (n % 2 == 0) ? a(n/2) : a((n-1)/2) + a((n+1)/2)
end
puts a(10**25 + 1)
