#!/usr/bin/ruby
d = File.open("022_names.txt").read.gsub('"','').split(/,/).sort
puts d.each_index.inject(0){ |s,i| s + ( d[i].split(//).inject(0){ |s,c| s+c[0]-"@"[0] } * (i+1) ) }
