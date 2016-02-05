class CurrencyTrader
  def initialize(converter_one, converter_two, currency)
    @converter_one = converter_one
    @converter_two = converter_two
    @currency = currency
  end

  def trade
    good_rates = {}
    @converter_one.rates.each{ |key, value|
      (@converter_one.rates[key] > @converter_two.rates[key]) ? (good_rates[key] = ((@converter_one.rates[key] / @converter_one.rates[@currency.code.to_sym]) * (@converter_two.rates[@currency.code.to_sym] / @converter_two.rates[key]))) : next
    }
    return good_rates.key(good_rates.values.max)
  end
end
