#!/usr/bin/ruby
def f(x) (2 ** (30.403243784 - (x*x))).floor / (10.0 ** 9) end
last = -1
1.upto(1000){ |n| last = f(last) }
puts last+f(last)
