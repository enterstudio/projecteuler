#!/usr/bin/ruby
def gcd(a,b) return (b==0) ? a : gcd(b, a % b) end
puts [*1..20].inject(1){ |s,x| s*x / gcd(s,x) }
