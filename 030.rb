#!/usr/bin/ruby
@values = [0,1,32,243,1024,3125,7776,16807,32768,59049]
@table = []

def sum(n)
	return @values[n] if n<10
	return @table[n] if @table[n]
	@table[n] = @values[n%10] + sum(n / 10)
end

s = 0
(3..@values[9]*6).each{ |i| s += i if sum(i) == i }
puts s
