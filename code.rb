require './currency.rb'
require './currency_converter.rb'

usd_one = Currency.new(10, :USD)
usd_two = Currency.new(15, :USD)
cad_one = Currency.new(10, :CAD)

puts "enter a currency"
cad_two = Currency.new(gets.chomp)

rates = CurrencyConverter.new
puts rates.find_rate(cad_two.code.to_sym)

# puts cad_two.amount
# puts cad_two.code
# puts "\u2713".encode("UTF-8")
