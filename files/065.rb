#!/usr/bin/ruby
require 'rational'
n = 100
exp = [ 2 ]
2.step(n,2){ |i| exp.concat [ 1, i, 1] }
def exp_to_rat(exp) Rational(exp[0],1) + ((exp.length == 1) ? 0 : Rational(1, exp_to_rat(exp[1..-1]))) end
puts exp_to_rat(exp[0..n-1]).numerator.to_s.split(//).inject(0){ |s,x| s + x.to_i }
