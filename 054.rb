#!/usr/bin/ruby
def parsehand(s)
	s = s.split(/ /)
	s.each_index do |i|
		s[i] = s[i].split(//)
		s[i][0] = s[i][0].gsub("T","10").gsub("J","11").gsub("Q","12").gsub("K","13").gsub("A","14").to_i
		s = s.sort_by{ |a| a[0] }
	end
	s
end

def onepair?(h)
	return h[0][0] if h[0][0] == h[1][0] 
	return h[1][0] if h[1][0] == h[2][0]
	return h[2][0] if h[2][0] == h[3][0] 
	return h[3][0] if h[3][0] == h[4][0]
	return nil
end

def twopairs?(h)
	( h[0][0] == h[1][0] and h[2][0] == h[3][0] ) or \
	( h[0][0] == h[1][0] and h[3][0] == h[4][0] ) or \
	( h[1][0] == h[2][0] and h[3][0] == h[4][0] )
end

def triplet?(h)
	( h[0][0] == h[1][0] and h[1][0] == h[2][0] ) or \
	( h[1][0] == h[2][0] and h[2][0] == h[3][0] ) or \
	( h[2][0] == h[3][0] and h[3][0] == h[4][0] )
end

def straight?(h)
	h[0][0] + 1 == h[1][0] and \
	h[1][0] + 1 == h[2][0] and \
	h[2][0] + 1 == h[3][0] and \
	h[3][0] + 1 == h[4][0]
end

def flush?(h)
	h[0][1] == h[1][1] and h[1][1] == h[2][1] and h[2][1] == h[3][1] and h[3][1] == h[4][1]
end

def fullhouse?(h)
	( h[0][0] == h[1][0] and h[1][0] == h[2][0] and h[3][0] == h[4][0] ) or \
	( h[0][0] == h[1][0] and h[2][0] == h[3][0] and h[3][0] == h[4][0] )
end

def quadruplet?(h)
	( h[0][0] == h[1][0] and h[1][0] == h[2][0] and h[2][0] == h[3][0] ) or \
	( h[1][0] == h[2][0] and h[2][0] == h[3][0] and h[3][0] == h[4][0] )
end

def straightflush?(h)
	straight?(h) and flush?(h)
end

def royalflush?(h)
	straightflush?(h) and h[0][0] == 10
end

def rank(h)
	return 9 if royalflush?(h)
	return 8 if straightflush?(h)
	return 7 if quadruplet?(h)
	return 6 if fullhouse?(h)
	return 5 if flush?(h)
	return 4 if straight?(h)
	return 3 if triplet?(h)
	return 2 if twopairs?(h)
	return 1 if onepair?(h)
	return 0
end

def winner(g,h)

	if rank(g) < rank(h) then
		return 2
	elsif rank(g) > rank(h) then
		return 1
	end

	if rank(g) == 0 then
		return g[4][0] > h[4][0] ? 1 : 2
	end

	if rank(g) == 1 then
		if onepair?(g) > onepair?(h) then
			return 1
		elsif onepair?(g) < onepair?(h) then
			return 2
		else
			return g[4][0] > h[4][0] ? 1 : 0
		end
	end

end

puts File.open("054_poker.txt").readlines.map{ |l| [ l[0,14], l[15,14] ] }.select{ |h|
	winner(parsehand(h[0]), parsehand(h[1])) == 1
}.length
