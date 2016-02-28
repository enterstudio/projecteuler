#!/usr/bin/ruby
require 'primetool.rb'
primes = PrimeTool.new(200000).primes[3..-1]

def modpow(base, power, modulus)
	m = base
	pow = power.to_s(2)
	1.upto(pow.length - 1) do |i|
		m = (m*m) % modulus
		m = (m*base) % modulus if pow[i,1] == "1"
	end
	return m
end

puts primes.select{ |p| modpow(10, 10**9, p) == 1 }[0..39].inject(&:+)
