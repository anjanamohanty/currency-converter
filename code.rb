require './currency.rb'
require './currency_converter.rb'

usd_one = Currency.new(10, :USD)
usd_two = Currency.new(15, :USD)
cad_one = Currency.new(10, :CAD)

usd_three = usd_one.add(usd_two)
puts "#{usd_three.amount} #{usd_three.code}"

usd_four = usd_three.subtract(usd_two)
puts "#{usd_four.amount} #{usd_four.code}"

usd = usd_four.multiply(4)
puts "#{usd.amount} #{usd.code}"


rates = {USD: 1.00, EUR: 0.74, JPY: 120.0, CAD: 1.37}
rates_tomorrow = {USD: 1.00, EUR: 0.64, JPY: 130.0, CAD: 1.17}

monday_rates = CurrencyConverter.new(rates)
usd_to_cad = monday_rates.convert(usd, :CAD)

puts usd_to_cad.amount
puts usd_to_cad.code
