#!/usr/bin/ruby
puts (2**1000).to_s.split(//).inject(0){ |s,x| s+x.to_i }
