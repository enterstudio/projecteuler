#!/usr/bin/ruby
@happymemo = []
@qsmemo = []
@happymemo[567] = nil
@happymemo[1] = true
@happymemo[89] = false

def qs(n)
	@qsmemo[n].nil? ? (	@qsmemo[n] = (n<10) ? n**2 : ( (n%10)**2 + qs(n/10) ) ) : @qsmemo[n]
end
 
def happy(n)
	(n>567) ? @happymemo[qs(n)] : ( @happymemo[n].nil? ? ( @happymemo[n] = happy(qs(n)) ) : @happymemo[n] )
end

puts [*2..10**7].select{ |n| !happy(n) }.length
