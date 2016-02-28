#!/usr/bin/ruby
max = 0
1.upto(9999) do |k|

	digits = []

	i=0
	while i+=1 and digits.length < 9 do
		new = (k*i).to_s.split(//)
		break if new.include?("0")
		break if new.uniq.length != new.length
		break if digits&new != []
		digits.concat new
		max = [ max, digits.join("").to_i ].max if digits.length == 9
	end

end

puts max
