class CurrencyTrader
  def initialize(converter_array, currency)
    @converter_array = converter_array
    @currency = currency
  end

  def get_all_rates
    all_trades = {}
    @converter_array.length.times do |i|
      break if (i+1) == @converter_array.length
      trades = {}
      @converter_array[0].rates.each{ |key, value|
        trades[key] = get_rates(i, key)
      }
      all_trades[i] = trades
    end
    puts all_trades
  end

  def get_rates(i, current_currency)
    rates = {}
    @converter_array[i].rates.each{ |key, value|
      rates[key] = ((@converter_array[i].rates[key] / @converter_array[i].rates[current_currency.to_sym]) * (@converter_array[i+1].rates[current_currency.to_sym] / @converter_array[i+1].rates[key]))
    }
    rates
  end
end
