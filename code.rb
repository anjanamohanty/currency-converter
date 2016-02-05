require './currency.rb'
require './currency_converter.rb'
require 'byebug'

usd_one = Currency.new(10, :USD)
usd_two = Currency.new(15, :USD)
cad_one = Currency.new(10, :CAD)

cad_two = Currency.new("$ 120")

rates = CurrencyConverter.new

new_currency = rates.convert(cad_two, :CAD)
puts "#{new_currency.amount} #{new_currency.code}"
