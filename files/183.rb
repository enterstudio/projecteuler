#!/usr/bin/ruby
def gcd(a,b) return (b==0) ? a : gcd(b, a % b) end
e = (1.0 + 1.0/10000.0)**10000
s = 0
for n in 5..10000 do
	m = [ (n/e).floor, (n/e).ceil ].map{ |k| [ k * Math.log(n.to_f / k.to_f), k ] }.max_by{ |x| x[0] }
	tmp = m[1] / gcd(m[1],n)
	tmp /= 2 while tmp % 2 == 0
	tmp /= 5 while tmp % 5 == 0
	s += (tmp == 1) ? -n : n
end
puts s
