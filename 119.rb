#!/usr/bin/ruby
def qs(n) n < 10 ? n : (n % 10) + qs(n/10) end

a = []

1.upto(100) do |b|
	a << [b, b]
	10.times do a << [b, a.last[1] * b] end
end

puts a.select{ |n| n[0] == qs(n[1]) }.select{ |n| n[1] >= 10 }.map{ |n| n[1] }.sort[29]
