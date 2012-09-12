#!/usr/bin/ruby
digits = [*0..10**6].to_s
puts [*0..6].inject(1){ |s,x| s * digits[10**x,1].to_i }
