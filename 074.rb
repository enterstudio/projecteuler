#!/usr/bin/ruby
@fac = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]

def f(n)
	s = 0
	while n > 0 do
		s += @fac[n%10]
		n /= 10
	end
	return s
end

memo = Array.new(10**6)
total = 0

for n in 0..10**6 do
	x = [ n ]
	len = 0
	while len += 1 do
		xn = f(x.last)

		if tmp = memo[xn] then
			len += tmp
			break
		end

		break if x.include? xn
		x << xn
	end

	for m in 0..(x.length-1)
		memo[x[m]] = len - m
	end

	total += 1 if memo[n] == 60
end

puts total
