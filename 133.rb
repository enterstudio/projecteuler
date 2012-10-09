#!/usr/bin/ruby
require 'primetool.rb'
primes = PrimeTool.new(100000).primes

def modpow(base, power, modulus)
	m = base
	pow = power.to_s(2)
	1.upto(pow.length - 1) do |i|
		m = (m*m) % modulus
		m = (m*base) % modulus if pow[i,1] == "1"
	end
	return m
end

puts primes.select{ |p| p <= 5 or modpow(10, 10**50, p) != 1 }.inject(&:+)
