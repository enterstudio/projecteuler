#!/usr/bin/ruby
require 'primetool'
pt = PrimeTool.new(10**6)
seen = {}

pt.primes.each do |p|
	next if seen[p]
	qs = []
	for s in 1..(2**p.to_s.length-2)
		qss = []
		for d in 0..9 do
			q = p.to_s
			for i in 0..(p.to_s.length-2) do
				q[i,1] = d.to_s if s & (2**i) != 0
			end
			qss << q
		end
		tmp = qss.map{ |q| q.to_i }.select{ |q| q.to_s.length == p.to_s.length and pt.is_prime?(q) }.uniq
		tmp.each do |t| seen[t] = true end
		qs << tmp
	end
	if qs.map{ |q| q.length }.max == 8
		puts qs.select{ |q| q.length == 8 }.flatten.min
		break
	end
end
