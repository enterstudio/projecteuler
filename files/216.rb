#!/usr/bin/ruby
require 'primetool'

def jacobi(a,b)
	if a<0 then return ((b%4==1) ? 1 : (-1)) * jacobi(-a, b) end
	if a < 2 then return a end
	if a%2 == 0 then return ((b%8==1 or b%8==7) ? 1 : (-1)) * jacobi(a/2,b) end
	return ((a % 4 == 1 or b % 4 == 1) ? 1 : (-1)) * jacobi(b % a, a)
end

def modpow(base, power, modulus)
	return 1 if power == 0
	return modpow((base*base) % modulus, power/2, modulus) if power % 2 == 0
	return (base * modpow(base, power-1, modulus)) % modulus
end

def sqrtmod(n, p)
	if p % 4 == 3
		r = modpow(n, (p+1)/4, p)
		return r, p-r
	end
	q, s, z = p-1, 0, 2
	while q % 2 == 0 do q /= 2; s += 1 end
	while jacobi(z,p) != -1 do z += 1 end
	c = modpow(z, q, p)
	r = modpow(n, (q+1)/2, p)
	t = modpow(n, q, p)
	m = s
	loop do
		return r, p-r if t == 1
		tmp = t
		i = 0
		while tmp != 1
			i += 1
			tmp = modpow(tmp, 2, p)
		end
		b = modpow(c, 2**(m-i-1), p)
		r = (r * b) % p
		t = (t * (b**2)) % p
		c = (b**2) % p
		m = i
	end
end

limit = 50 * (10**6)
pt = PrimeTool.new((Math.sqrt(2) * limit).to_i)
ns = Array.new(limit+1, true)

pt.primes[1..-1].each do |p|
	next unless [1,7].include?(p%8)
	x1, x2 = sqrtmod(2, p)
	p12 = (p+1)/2
	x1 = (x1 * p12) % p
	x2 = (x2 * p12) % p
	while x1 <= limit do ns[x1] = false; x1 += p end
	while x2 <= limit do ns[x2] = false; x2 += p end
	t = Math.sqrt(p12).to_i
	ns[t] = true if t*t == p12
end

puts ns[2..-1].grep(true).length
