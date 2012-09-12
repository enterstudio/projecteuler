#!/usr/bin/ruby
require 'primetool'
@pt = PrimeTool.new(5 * 10**5)
i = 7037
break if 2*i*@pt.primes[i-1] > 10**10 while i += 2
puts i
