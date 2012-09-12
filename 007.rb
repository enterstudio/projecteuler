#!/usr/bin/ruby
require 'primetool'
# Nach Primzahlsatz: 10001 <= 120000 / ln(120000) = 10260
p = PrimeTool.new(120000)
puts p.prime(10001)
