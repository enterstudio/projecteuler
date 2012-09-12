#!/usr/bin/ruby
words = {}
File.open("098_words.txt").readlines.join.gsub("\"", "").split(/,/).each do |word|
	k = word.split(//).sort
	words[k] = [] unless words[k]
	words[k] << word
end
words.delete_if{ |k,v| v.length == 1 }

squares = {}
for i in 0..(10 ** (words.keys.sort_by{ |c| c.length }[-1].length / 2.0)).ceil do
	square = i*i
	k = square.to_s.split(//).sort.join
	squares[k] = [] unless squares[k]
	squares[k] << square
end
squares.delete_if{ |k,v| v.length == 1 }

max = 0
squares.values.each do |sg|
	for i in 0..(sg.length-2) do
		words.values.each do |wg|
			next unless wg[0].length == sg[i].to_s.length
			map = {}
			for d in 0..(wg[0].length-1) do
				map[wg[0][d,1]] = sg[i].to_s.split(//).map{ |c| c.to_i }[d]
			end
			next unless map.values.length == map.values.uniq.length
			for j in i..(sg.length-1) do
				if wg[1].split(//).map{ |c| map[c] }.join.to_i == sg[j]
					max = [ max, sg[i], sg[j] ].max
				end
			end
		end
	end
end
puts max
