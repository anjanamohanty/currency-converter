require './currency.rb'
require './currency_converter.rb'
require './currency_trader.rb'

hundred_usd = Currency.new(100, :EUR)

old_value = CurrencyConverter.new({USD: 1, EUR: 0.767, GBP: 0.642, AUD: 1.353, CAD: 1.355, JPY: 102.162})
present_value = CurrencyConverter.new({USD: 1, EUR: 0.898, GBP: 0.656, AUD: 1.433, CAD: 1.122, JPY: 119.863})
future_value = CurrencyConverter.new({USD: 1, EUR: 0.898, GBP: 0.656, AUD: 1.433, CAD: 1.322, JPY: 119.863})
another_future_value = CurrencyConverter.new({USD: 1, EUR: 0.767, GBP: 0.642, AUD: 1.353, CAD: 1.355, JPY: 102.162})

trader = CurrencyTrader.new([old_value, present_value, future_value, another_future_value], hundred_usd)
trader.trade
