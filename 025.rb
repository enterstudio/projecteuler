#!/usr/bin/ruby
a = b = i = 1
while a.to_s.length < 1000 do a, b, i = b, a+b, i+1 end
puts i
