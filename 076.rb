#!/usr/bin/ruby
n = 100
@cache = Array.new(n+1)
@cache.each_index do |i| @cache[i] = [] end

def p(k,n)
	return 0 if k>n
	return 1 if k==n
	@cache[k][n] ? @cache[k][n] : ( @cache[k][n] = p(k+1,n) + p(k,n-k) )
end

puts p(1,n)-1
