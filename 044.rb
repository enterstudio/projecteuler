#!/usr/bin/ruby
pentas = {}
p = k = 0

while true do

	p += 3*k + 1
	k += 1

	pentas.each_key do |q|
		if pentas[p-q] and pentas[p-q-q] then
			puts "#{p-2*q}"
			exit
		end
	end

	pentas[p] = true

end
