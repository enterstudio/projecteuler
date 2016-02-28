#!/usr/bin/ruby
def eea(a,b)
	return a,1,0 if b == 0
	d,s,t = eea(b, a % b)
	return d, t, s - (a/b) * t
end

ps = [2,3,5,7,11,13,17,19,23,29,31,37,41,43]
n = ps.inject(1){ |a,b| a*b }

xs = ps.map{ |p| [*0..(p-1)].select{ |x| x**3 % p == 1 } }
s = ps.map{ |p| g, r, s = eea(p,n/p); s*(n/p) }

puts xs.first.product(*xs.drop(1)).map{ |a|
	([*0..(ps.length-1)].map{ |i| a[i] * s[i] }.inject(0){ |a,b| a+b } + n) % n
}.inject(0){ |a,b| a+b } - 1
