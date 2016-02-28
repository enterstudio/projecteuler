#!/usr/bin/ruby
def row(i,j) [i].product([*0..8]) end
def col(i,j) [*0..8].product([j]) end
def box(i,j) [*3*(i/3)..3*(i/3)+2].product([*3*(j/3)..3*(j/3)+2]) end
def cands(is,s) is.map{ |k| s[k[0]][k[1]].dup }.select{ |k| k.length == 1 }.flatten end
def unsolved(s) 9*9 - (cands([*0..8].product([*0..8]), s)).length end

def solve(s)
	todo = unsolved(s)

	loop do
		for i in 0..8 do
			for j in 0..8 do
				if s[i][j].length > 1
					s[i][j] = [*1..9] - cands(row(i,j),s) - cands(col(i,j),s) - cands(box(i,j),s)
				end
				return false if s[i][j] == []
			end
		end

		todo2 = unsolved(s)
		return s if todo2 == 0

		if todo2 == todo
			cand = [*0..8].product([*0..8]).select{ |c| s[c[0]][c[1]].length > 1 }.min_by{ |c| s[c[0]][c[1]].length }
			s[cand[0]][cand[1]].each do |c|
				s[cand[0]][cand[1]] = [ c ]
				res = solve(s.map{ |l| l.dup })
				return res if res
			end
			return false
		end

		todo = todo2
	end
end

s = []
sum = 0
File.open("096_sudoku.txt").readlines.each do |line|
	s << line if line !~ /Grid/
	if s.length == 9
		sol = solve(s.map{ |l| l.split(//).map{ |c| c == "0" ? [*1..9] : [ c.to_i ] } })
		sum += (100 * sol[0][0][0] + 10*sol[0][1][0] + sol[0][2][0])
		s = []
	end
end
puts sum
