#!/usr/bin/ruby
@guesses = [
	["5616185650518293", 2], ["3847439647293047", 1], ["5855462940810587", 3],
	["9742855507068353", 3], ["4296849643607543", 3], ["3174248439465858", 1],
	["4513559094146117", 2], ["7890971548908067", 3], ["8157356344118483", 1],
	["2615250744386899", 2], ["8690095851526254", 3], ["6375711915077050", 1],
	["6913859173121360", 1], ["6442889055042768", 2], ["2321386104303845", 0],
	["2326509471271448", 2], ["5251583379644322", 2], ["1748270476758276", 3],
	["4895722652190306", 1], ["3041631117224635", 3], ["1841236454324589", 3],
	["2659862637316867", 2]
]
@length = @guesses.first.first.length

def format(d) sprintf("%02d", d) end

lp = "/* model.lp */\n\nmax: ;\n\n"

@guesses.each do |g|
	vars = []
	1.upto(@length) do |i| vars << "x_#{format(i)}_#{g[0][i-1,1].to_i}" end
	lp += vars.join(" + ") + " = " + g[1].to_s + ";\n"
end

1.upto(@length) do |i|
	vars = []
	0.upto(9) do |j| vars << "x_#{format(i)}_#{j}" end
	lp += vars.join(" + ") + " = 1;\n"
end

1.upto(@length) do |i|
	0.upto(9) do |j| lp += "bin x_#{format(i)}_#{j};\n" end
end

p = File.popen('lp_solve 2>&1', "w+")
p.puts lp
p.close_write
out = p.readlines
p.close
puts out.select{ |c| c.chomp[-1,1] == "1" }.sort.map{ |c| c.gsub(/.*_/, "").gsub(/\s.*/, "") }.join.strip.chomp
