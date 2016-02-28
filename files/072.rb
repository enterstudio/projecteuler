#!/usr/bin/ruby
require 'primetool'
max = 10**6
phi = Array.new(max+1){ |i| i }
pt = PrimeTool.new(max)

pt.primes.each do |i|
	phi[i] = i-1
	j=1
	while j += 1 and (k = i*j) <= max do
		phi[k] -= phi[k]/i
	end
end

puts phi[2..-1].inject(0){ |s,k| s+k }
