require './currency.rb'
require './currency_converter.rb'
require 'byebug'

usd_one = Currency.new(10, :USD)
usd_two = Currency.new(15, :USD)
cad_one = Currency.new(10, :CAD)

# puts "enter a currency"
cad_two = Currency.new("1", "EUR")

rates = CurrencyConverter.new
# puts rates.find_rate(cad_two.code.to_sym)
new_currency = rates.convert(cad_two, :JPY)
puts "#{new_currency.amount} #{new_currency.code}"

# puts cad_two.amount
# puts cad_two.code
# puts "\u2713".encode("UTF-8")
