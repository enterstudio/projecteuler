#!/usr/bin/ruby
digits = [0,1,2,3,4,5,6,7,8,9]
sum = 0

digits.each do |d1|
	(digits - [d1]).each do |d2|
		(digits - [d1, d2]).each do |d3|
			((digits - [d1, d2, d3]) & [0,2,4,6,8]).each do |d4|
				(digits - [d1, d2, d3, d4]).each do |d5|
					next if (d3+d4+d5) % 3 != 0
					((digits - [d1,d2,d3,d4,d5]) & [0,5]).each do |d6|
						(digits - [d1,d2,d3,d4,d5,d6]).each do |d7|
							next if (100*d5 + 10*d6 + d7) % 7 != 0
							(digits - [d1,d2,d3,d4,d5,d6,d7]).each do |d8|
								next if (100*d6 + 10*d7 + d8) % 11 != 0
								(digits - [d1,d2,d3,d4,d5,d6,d7,d8]).each do |d9|
									next if (100*d7 + 10*d8 + d9) % 13 != 0
									(digits - [d1,d2,d3,d4,d5,d6,d7,d8,d9]).each do |d10|
										next if (100*d8 + 10*d9 + d10) % 17 != 0
										sum += [d1,d2,d3,d4,d5,d6,d7,d8,d9,d10].join("").to_i
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

puts sum
