#!/usr/bin/ruby
require 'primetool'

@trunc = [ {}, {} ]
@hits = []

def trunc(n,i)

	return if n > 1000000

	if PrimeTool.is_prime_trial?(n) then
		@trunc[i][n] = true
	else
		@trunc[i][n] = false
		return
	end

	for a in [1,2,3,5,7,9] do
		if i==0 then
			next if a == n.to_s[-1]
			trunc((n.to_s + a.to_s).to_i, 0)
		else
			next if a == n.to_s[0]
			trunc((a.to_s + n.to_s).to_i, 1)
		end
	end

	@hits << n if @trunc[0][n] and @trunc[1][n] and n%10 != 1 and n.to_s[0,1] != "1" and n > 10

end

0.upto(9) { |i| trunc(i,0); trunc(i,1) }
puts @hits.inject(0){ |s,x| s+x }
