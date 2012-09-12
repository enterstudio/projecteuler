#!/usr/bin/ruby
pete = Array.new(4*9 + 1, 0)
1.upto(4) do |i1|
	1.upto(4) do |i2|
		1.upto(4) do |i3|
			1.upto(4) do |i4|
				1.upto(4) do |i5|
					1.upto(4) do |i6|
						1.upto(4) do |i7|
							1.upto(4) do |i8|
								1.upto(4) do |i9|
									pete[i1+i2+i3+i4+i5+i6+i7+i8+i9] += 1
								end
							end
						end
					end
				end
			end
		end
	end
end

colin = Array.new(6*6 + 1, 0)
1.upto(6) do |i1|
	1.upto(6) do |i2|
		1.upto(6) do |i3|
			1.upto(6) do |i4|
				1.upto(6) do |i5|
					1.upto(6) do |i6|
						colin[i1+i2+i3+i4+i5+i6] += 1
					end
				end
			end
		end
	end
end

s = 0
n = [*9..36].map{ |p| pete[p] }.inject(&:+) * [*6..36].map{ |c| colin[c] }.inject(&:+)
[*9..36].each do |p|
	[*6..36].each do |c|
		s += pete[p] * colin[c] if p > c
	end
end

puts "%.7f" % (s.to_f / n.to_f)
