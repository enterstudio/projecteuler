#!/usr/bin/ruby
def fac(n) return (n==1) ? 1 : n*fac(n-1) end
puts fac(100).to_s.split(//).inject(0){ |s,x| s+x.to_i }
