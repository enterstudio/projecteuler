#!/usr/bin/ruby
@names = [ "",
	"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten",
	"eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen",
	"eighteen", "nineteen", "twenty"
]

@names[  30] = "thirty"
@names[  40] = "forty"
@names[  50] = "fifty"
@names[  60] = "sixty"
@names[  70] = "seventy"
@names[  80] = "eighty"
@names[  90] = "ninety"
@names[ 100] = "hundred"
@names[1000] = "one thousand"

def name(n)
	return @names[n] if @names[n]
	return name(n/10*10) + "-" + name(n%10) if n<100
	return name(n/100) + " " + name(100) + ( (n%100 > 0) ? (" and " + name(n%100)) : "" )
end

sum = 3 # "one" bei 100 fehlt ("hundred")
for i in 1..1000 do
	sum += name(i).gsub(/ |-/, "").length
end
puts sum
