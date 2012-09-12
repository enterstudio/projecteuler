#!/usr/bin/ruby
def digits(n) n.to_s.split(//).sort end

i=0
while true do
	i += 1
	digits = digits(i)
	next if digits(2*i) != digits
	next if digits(3*i) != digits
	next if digits(4*i) != digits
	next if digits(5*i) != digits
	next if digits(6*i) != digits
	puts i
	exit
end
