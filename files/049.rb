#!/usr/bin/ruby
require 'primetool'
pt = PrimeTool.new(9999)

# 1009 ist die 169. Primzahl und die erste, die vierstellig ist
i = 169
j = i+1

while true do
	p = [ pt.prime(i), pt.prime(j), nil ]
	if p[1].nil? then
		i,j = i+1, i+2
		next
	end
	p[2] = 2 * p[1] - p[0]

	j += 1
	next unless pt.is_prime?(p[2])
	next unless p[0].to_s.split(//).sort == p[1].to_s.split(//).sort
	next unless p[0].to_s.split(//).sort == p[2].to_s.split(//).sort
	next unless p[1].to_s.split(//).sort == p[2].to_s.split(//).sort
	next if p[0] == 1487
	puts p.to_s
	break
end
