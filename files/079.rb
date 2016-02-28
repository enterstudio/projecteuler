#!/usr/bin/ruby
tsort = File.popen("tsort", "r+")
data = File.open("079_keylog.txt").readlines.sort.uniq.map do |v|
	v = v.split(//); tsort.puts "#{v[0]} #{v[1]} #{v[0]} #{v[2]} #{v[1]} #{v[2]}"
end
tsort.close_write
puts tsort.readlines.map{ |l| l.chomp }.join("")
