#!/usr/bin/ruby
require 'bigdecimal'
puts [*0..100].select{ |c| Math.sqrt(c).floor**2 != c }.map{ |c|
	s = (BigDecimal.new(c.to_s).sqrt(100) * 10**100).to_i.to_s[0,100]
	s.split(//).inject(0){ |a,b| a + b.to_i }
}.inject(0){ |a,b| a+b }
