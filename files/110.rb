#!/usr/bin/ruby
limit = 4*(10**6)
k = (Math.log(limit) / Math.log(3)).ceil
primes = [2,3,5,7,11,13,17,19,23,29,31,37,41,43][0..k-1]
step = primes[0..k-3].inject(1){ |a,b| a*b }
n = 0
while n += step do
	m = n
	es = primes.map do |prime|
		e = 0; e += 1 while m % prime == 0 and m /= prime; e
	end
	if es.inject(1){ |a,b| a * (2*b+1) } >= 2 * limit then puts n; exit; end
end
