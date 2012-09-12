#!/usr/bin/ruby
$pl = [
	2,3,5,7,11,13,17,19,23,29,31,37,41,
	43,47,53,59,61,67,71,73,79,83,89,97
].map{ |p| Math.log(p) / Math.log(10) }

def enum(pos, log)
	return false if log > 9
	$s += 1
	for i in pos..($pl.length-1) do
		break unless enum(i, log + $pl[i])
	end
	return true
end

$s = 0
enum(0,0)
puts $s
