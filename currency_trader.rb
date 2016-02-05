class CurrencyTrader
  def initialize(converter_array, currency)
    @converter_array = converter_array
    @currency = currency
  end

  def trade
    trades = []
    trades[0] = @currency.code
    @converter_array.length.times do |i|
      break if (i+1) == @converter_array.length
      trades[i+1] = get_best_trade(i, trades[i])
    end
    puts trades

    # trades.length.times do |i|
    #   break if (i+1) == trades.length
    #   puts "You should invest in #{trades}"
  end

  def get_best_trade(i, current_currency)
    rates = {}
    @converter_array[i].rates.each{ |key, value|
      rates[key] = ((@converter_array[i].rates[key] / @converter_array[i].rates[current_currency.to_sym]) * (@converter_array[i+1].rates[current_currency.to_sym] / @converter_array[i+1].rates[key]))
    }
    best_trade = rates.key(rates.values.max)
    best_trade_rate = rates[best_trade]
    puts "#{best_trade} #{best_trade_rate}"
    return best_trade
  end
end
