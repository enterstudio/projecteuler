#!/usr/bin/ruby
require 'primetool'
n = 2 * (10**6)
p = PrimeTool.new(n)
puts [*2..n].inject(0){ |s,i| s + ((p.is_prime?(i)) ? i : 0) }
