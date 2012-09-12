#!/usr/bin/ruby
primes = [5,13,17,29,37,41,53,61,73,89,97,101,109,113,137,149]
$primesums = {}

primes.map do |p|
	0.upto(Math.sqrt(p).floor) do |a|
		if Math.sqrt(p-a**2).to_i ** 2 == (p-a**2) then
			$primesums[p] = [ a, Math.sqrt(p-a**2).to_i ]
			break
		end
	end
end

def foo(n)
	a,b = $primesums[n[0]]
	return [ [a,b] ] if n.length == 1
	x = foo(n[1..-1])
	return x.map{ |c,d| [ (a*d-b*c).abs, a*c+b*d ] } + x.map{ |c,d| [ (a*c-b*d).abs, a*d+b*c ] }
end

s = 0
1.upto(2**(primes.length)-1) do |i|
	n = []
	0.upto(primes.length-1) do |j|
		n << primes[j] if i & (1<<j) != 0
	end
	s += foo(n).map{ |c| c.min }.uniq.inject(&:+)
end
puts s
