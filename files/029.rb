#!/usr/bin/ruby
puts (2..100).map{ |i| (2..100).map{ |j| [i**j, j**i] } }.flatten.sort.uniq.length
