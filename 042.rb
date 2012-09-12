#!/usr/bin/ruby
words = File.open('042_words.txt').read.gsub('"', '').split(/,/)
words = words.map{ |s| s.split(//).inject(0){ |s,x| s + ( x[0] - "@"[0] ) } }
t,i  = [1], 1
t << t.last + (i+=1) while t.last <= words.max
puts words.select{ |w| t.include?(w) }.length
