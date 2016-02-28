#!/usr/bin/ruby
max = Math.sqrt(192939495969798990 / 10).ceil
while (max*max).to_s !~ /^1\d2\d3\d4\d5\d6\d7\d8\d9$/ do max -= 2 end
puts max*10
