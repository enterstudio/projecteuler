#!/usr/bin/ruby
@fac = [1,1,2,6,24,120,720,5040,40320,362880]
@table = []

def facsum(n)
	return @fac[n] if n<10
	return @table[n] if @table[n]
	@table[n] = @fac[n%10] + facsum(n / 10)
end

s = 0
(3..@fac[9]*7).each{ |i| s += i if facsum(i) == i }
puts s
