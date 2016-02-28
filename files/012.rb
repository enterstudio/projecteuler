#!/usr/bin/ruby
limit = 500

def d(n)
	c,i = 2,2
	# Bis sqrt(n) testen reicht, dann direkt 2 zählen
	while i*i < n do
		c += 2 if n%i == 0
		i += 1
	end
	return c
end

m,t,i = 0,1,1
while m <= limit do
	t = i*(i+1)/2

	# i und i+1 sind teilerfremd und d(n) ist zahlentheoretisch
	a = (i%2==0) ? [i/2,i+1] : [i,(i+1)/2]
	m = d(a[0]) * d(a[1])

	i += 1
end
puts t
