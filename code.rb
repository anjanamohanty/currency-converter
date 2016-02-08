require './currency.rb'
require './currency_converter.rb'
require './currency_trader.rb'

hundred_usd = Currency.new(100, :USD)
seven_yen = Currency.new(7, :USD)

old_value = CurrencyConverter.new({USD: 1, EUR: 0.767, GBP: 0.642})
present_value = CurrencyConverter.new({USD: 1, EUR: 0.898, GBP: 0.656})
future_value = CurrencyConverter.new({USD: 1, EUR: 0.767, GBP: 0.642})

trader = CurrencyTrader.new([old_value, present_value, future_value], hundred_usd)
trader.get_all_rates
