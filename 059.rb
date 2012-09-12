#!/usr/bin/ruby
cipher = File.open("059_cipher1.txt").read.chomp.split(/,/).map{|c| c.to_i }
keydigs = [*"a"[0].."z"[0]]

keydigs.each do |a|
	keydigs.each do |b|
		keydigs.each do |c|

			key = [a,b,c]
			sum = 0

			catch :break do
				cipher.each_index do |i|
					sum += s = key[i % 3] ^ cipher[i]
					throw :break if s < 20 or (s >= 35 and s <= 38) or s > 122
				end
				puts sum
				exit
			end

		end
	end
end
