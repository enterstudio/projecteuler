#!/usr/bin/ruby
class PrimeTool
	
	def initialize(n)

		@primes  = []
		@marked = [*0..n]
		@marked[0] = @marked[1] = nil
		limit = Math.sqrt(n).floor

		@marked.each do |i|
			next unless i
			break if i > limit
			(i*i).step(n,i) { |m| @marked[m] = nil }
		end

		@primes = @marked.select{ |p| p != nil }

		return self
	end

	def is_prime?(n)
		return ( @marked[n] != nil )
	end

	def self.is_prime_trial?(n)

		return (n==2) if (n%2==0)
		
		d = 3
		while d*d <= n do
			return false if (n%d==0)
			d += 2
		end

		return true

	end

	def is_prime_trial_with_sieve?(n)
		return is_prime?(n) if n < @primes.last
		primes.each do |p|
			return false if n%p == 0
		end
		return true
	end

	def prime(i)
		return @primes[i-1]
	end

	def primes
		return @primes
	end
end
