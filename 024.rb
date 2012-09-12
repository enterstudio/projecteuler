#!/usr/bin/ruby
n = 10**6

def fac(n)
	return 1 if n==1
	return n*fac(n-1)
end

def perm(a,k)
	return a[0] if a.length == 1
	f = fac(a.length - 1)
	i = k / f
	s = a[i]
	a.delete_at(i)
	return [s, perm(a, k - f * i)]
end

puts perm([0,1,2,3,4,5,6,7,8,9], n-1).to_s
