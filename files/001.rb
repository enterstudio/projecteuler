#!/usr/bin/ruby
n = 1000
def gauss(n) n*(n+1)/2 end
puts 3*gauss((n-1)/3) + 5*gauss((n-1)/5) - 15*gauss((n-1)/15)
