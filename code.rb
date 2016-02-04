require './currency.rb'

usd_one = Currency.new(10, :USD)
usd_two = Currency.new(15, :USD)
cad_one = Currency.new(10, :CAD)

puts usd_one.equals?(usd_two)
puts usd_one.equals?(cad_one)
puts usd_one.add(usd_two)

puts usd_one.multiply(5.0).amount
