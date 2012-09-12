#!/usr/bin/ruby
puts [*1..10**6].select{ |i| i.to_s == i.to_s.reverse and i.to_s(2) == i.to_s(2).reverse }.inject(0){ |s,x| s+x }
