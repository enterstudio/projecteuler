#!/usr/bin/ruby
require 'primetool'
def perm(k,s) 2.upto(s.length){|j| s[k%j], s[j-1], k = s[j-1], s[k%j], k / j } ; s end

s = [*1..7].to_s
(0..5039).map{ |i| perm(i,s).to_i }.sort.reverse.each do |n|
	if PrimeTool.is_prime_trial?(n) then
		puts n
		break
	end
end
