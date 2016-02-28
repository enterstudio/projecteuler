#!/usr/bin/ruby
puts [*1..1000].inject(0){ |s,i| s + ( (i**i) % (10**10) ) } % (10**10)
