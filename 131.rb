#!/usr/bin/ruby
require 'primetool'
n = 0
values = []
break if values.last > 10**6 while n+=1 and values << (n+1)**3 - n**3
puts values[0..-2].select{ |p| PrimeTool.is_prime_trial?(p) }.length
