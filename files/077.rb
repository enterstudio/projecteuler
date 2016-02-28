#!/usr/bin/ruby
require 'primetool.rb'
$primes = PrimeTool.new(100).primes
$memo = {}

def f(n, m=0)
	return 1-n if n <= 1
	return $memo[[n,m]] if $memo[[n,m]]
	$memo[[n,m]] = $primes.select{ |p| m <= p and p <= n }.inject(0){ |s,p| s + f(n-p, p) }
end

i = 0
i += 1 while f(i) < 5000
puts i
