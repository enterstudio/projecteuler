#!/usr/bin/ruby
require 'primetool'
n = 1000000
p = PrimeTool.new(n)
primes = p.primes

maxp = maxl = 0
for i in 0..(primes.length-1) do 

	sum = primes[i]
	list = [ sum ]

	for j in 1..((primes.length-1)-i) do

		sum += primes[i+j]
		break if sum >= n
		list << primes[i+j]

		if p.is_prime?(sum) then
			if list.length > maxl then
				maxp = sum
				maxl = list.length
			end
		end
	end
end

puts maxp
