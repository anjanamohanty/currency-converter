class CurrencyConverter
  def initialize
    @rates = {USD: 1.00, EUR: 0.74, JPY: 120.0, CAD: 1.37}
  end

  def find_rate(code)
    @rates[code]
  end

  def convert(currency, new_code)
    if @rates[new_code] && @rates[currency.code.to_sym]
      coverted_currency = Currency.new((currency.amount.to_f * (find_rate(new_code) / find_rate(currency.code.to_sym))), new_code.to_s)
    else
      raise UnknownCurrencyCodeError
    end
  end
end

class UnknownCurrencyCodeError < StandardError
end
