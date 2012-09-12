#!/usr/bin/ruby
a = 2**8
b = 5**8
phi = (2**7) * (2-1) * (5**7) * (5-1)

def modpow(base, power, modulus)
  m = base
  pow = power.to_s(2)
  1.upto(pow.length - 1) do |i|
    m = (m*m) % modulus
    m = (m*base) % modulus if pow[i,1] == "1"
  end
  return m
end

@xs4 = [ 1777, modpow(1777, 1777, a*b) ]
exp = @xs4.last
loop do
  exp = modpow(1777, exp, phi)
  x = modpow(1777, exp, a*b)
  break if @xs4.include?(x)
  @xs4 << x
end
puts @xs4.last
