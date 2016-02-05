require './currency.rb'
require './currency_converter.rb'
require './currency_trader.rb'

usd_one = Currency.new(10, :USD)
usd_two = Currency.new(15, :USD)
cad_one = Currency.new(10, :CAD)

usd_three = usd_one.add(usd_two)
puts "#{usd_three.amount} #{usd_three.code}"

usd_four = usd_three.subtract(usd_two)
puts "#{usd_four.amount} #{usd_four.code}"

usd = usd_four.multiply(4)
puts "#{usd.amount} #{usd.code}"

old_value = CurrencyConverter.new({USD: 1, EUR: 0.767, GBP: 0.642, AUD: 1.353, CAD: 1.355, JPY: 102.162})
present_value = CurrencyConverter.new({USD: 1, EUR: 0.898, GBP: 0.556, AUD: 1.433, CAD: 1.322, JPY: 119.863})
# #
# # monday = CurrencyConverter.new(rates)
# # tuesday = CurrencyConverter.new(rates_tomorrow)
# # usd_to_cad = monday.convert(usd, :EUR)
#
# puts usd_to_cad.amount
# puts usd_to_cad.code

trader = CurrencyTrader.new(old_value, present_value, usd_one)
puts "#{trader.trade}!"
