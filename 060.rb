#!/usr/bin/ruby
require 'primetool'
@pt = PrimeTool.new(10**4)
primes = @pt.primes - [2, 5]

def check(list)
	for k in 0..(list.length-1) do
		tmp = []
		q1 = list[k][-1]
		for l in (k+1)..(list.length-1) do
			q2 = list[l][-1]
			next unless @pt.is_prime_trial_with_sieve?((q1.to_s + q2.to_s).to_i)
			next unless @pt.is_prime_trial_with_sieve?((q2.to_s + q1.to_s).to_i)
			tmp << (list[k] + [q2])
			if tmp.last.length == 5 then
				puts tmp.last.inject(&:+)
				exit
			end
		end
		check(tmp)
	end
end

for i in 0..(primes.length-1) do
	list = []
	for j in (i+1)..(primes.length-1) do
		next unless @pt.is_prime_trial_with_sieve?((primes[i].to_s + primes[j].to_s).to_i)
		next unless @pt.is_prime_trial_with_sieve?((primes[j].to_s + primes[i].to_s).to_i)
		list << [primes[i], primes[j]]
	end
	check(list)
end
