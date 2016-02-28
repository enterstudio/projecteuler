#!/usr/bin/ruby
n = 200
i = 0

0.step(n,200) do |a|
	a.step(n,100) do |b|
		b.step(n,50) do |c|
			c.step(n,20) do |d|
				d.step(n,10) do |e|
					e.step(n,5) do |f|
						f.step(n,2) do |g|
							i += 1
						end
					end
				end
			end
		end
	end
end

puts i
