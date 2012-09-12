#!/usr/bin/ruby
puts [*3..1000].inject(0){ |s,a| s += 2 * (a - 2 + (a%2))/2 * a }
